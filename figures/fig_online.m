x = [16, 32, 48, 64, 80, 96, 112, 128, 144];
y1 = [10, 27, 41, 70, 89, 92, 93, 90, 91];
t1 = [1.040, 2.464, 5.528, 9.006, 16.792, 22.799, 32.114, 40.848, 55.805];
t2 = [2.924, 3.722, 4.831, 10.997, 29.283, 60.570, 120.737, 239.723, 359.207];

x0 = 0:150;
dash = 0 * x0 + 94;

figure(1);
hold on;
% plot(x, y1, 'k', 'LineWidth', 2);
values = spcrv([[x(1) x x(end)];[y1(1) y1 y1(end)]],3);
plot(values(1,:),values(2,:), 'k', 'LineWidth', 2);
plot(x0, dash, '--k');
% legend(label1,...,labelN)
xlabel('Input Image Size (pixel)', 'fontsize', 11) % x-axis label
ylabel('Test Accuracy (%)', 'fontsize', 11) % y-axis label
axis([0 150 0 100])

figure(2);
hold on;
plot(x, t1, 'LineWidth', 2);
plot(x, t2, 'LineWidth', 2);
legend('SIFT Time', 'Matching Time', 'fontsize', 11)
xlabel('Input Image Size (pixel)', 'fontsize', 11) % x-axis label
ylabel('Time Consumption (s)', 'fontsize', 11) % y-axis label
