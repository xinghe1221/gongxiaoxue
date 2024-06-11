% 定义任务完成时间数据
completion_time_1 = [
    35.2;
    54.7;
    41.3;
    49.8;
    38.6;
    52.1;
    46.3;
    57.5;
    39.9;
    50.6
];

completion_time_2 = [
    28.1;
    39.7;
    34.2;
    30.8;
    25.6;
    37.4;
    32.5;
    42.3;
    27.9;
    35.6
];

% 统计完成任务的次数
completion_count_1 = sum(completion_time_1 < 40);
completion_count_2 = sum(completion_time_2 < 40);

% 计算完成任务的概率
completion_probability_1 = completion_count_1 / numel(completion_time_1);
completion_probability_2 = completion_count_2 / numel(completion_time_2);

% 绘制第一个figure：任务完成时间对比图
figure;
bar([completion_time_1, completion_time_2]);
hold on;
plot(find(completion_time_1 < 40), completion_time_1(completion_time_1 < 40), 'ro', 'MarkerSize', 10); % 标记数据1的完成任务数据为红色圆点
plot(find(completion_time_2 < 40), completion_time_2(completion_time_2 < 40), 'bo', 'MarkerSize', 10); % 标记数据2的完成任务数据为蓝色圆点
hold off;
title('任务完成时间对比');
xlabel('操作者');
ylabel('时间（秒）');
legend('数据1', '数据2', '完成任务');

% 绘制第二个figure：数据1的任务完成时间
figure;
bar(completion_time_1);
hold on;
plot(find(completion_time_1 < 40), completion_time_1(completion_time_1 < 40), 'ro', 'MarkerSize', 10); % 标记数据1的完成任务数据为红色圆点
hold off;
title('数据1的任务完成时间');
xlabel('操作者');
ylabel('时间（秒）');
legend('数据1', '完成任务');

% 绘制第三个figure：数据2的任务完成时间
figure;
bar(completion_time_2);
hold on;
plot(find(completion_time_2 < 40), completion_time_2(completion_time_2 < 40), 'bo', 'MarkerSize', 10); % 标记数据2的完成任务数据为蓝色圆点
hold off;
title('数据2的任务完成时间');
xlabel('操作者');
ylabel('时间（秒）');
legend('数据2', '完成任务');

% 打印完成任务的概率
fprintf('数据1完成任务的概率为：%f\n', completion_probability_1);
fprintf('数据2完成任务的概率为：%f\n', completion_probability_2);
