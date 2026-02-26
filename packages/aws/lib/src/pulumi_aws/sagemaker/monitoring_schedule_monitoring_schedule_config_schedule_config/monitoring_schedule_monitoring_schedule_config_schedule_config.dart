// ignore_for_file: unused_element, unnecessary_cast

class MonitoringScheduleMonitoringScheduleConfigScheduleConfig {
  /// A cron expression that describes details about the monitoring schedule. For example, and hourly schedule would be `cron(0 * ? * * *)`.
  final String scheduleExpression;

  MonitoringScheduleMonitoringScheduleConfigScheduleConfig({
    required this.scheduleExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scheduleExpression'] = scheduleExpression;
    return map;
  }

  factory MonitoringScheduleMonitoringScheduleConfigScheduleConfig.fromMap(
      Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigScheduleConfig(
      scheduleExpression: map['scheduleExpression'] as String,
    );
  }
}
