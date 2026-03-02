// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitoringScheduleMonitoringScheduleConfigScheduleConfig {
  /// A cron expression that describes details about the monitoring schedule. For example, and hourly schedule would be `cron(0 * ? * * *)`.
  final pulumi.Input<String> scheduleExpression;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigScheduleConfig].
  /// [scheduleExpression] A cron expression that describes details about the monitoring schedule. For example, and hourly schedule would be `cron(0 * ? * * *)`.
  MonitoringScheduleMonitoringScheduleConfigScheduleConfig({
    required this.scheduleExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduleExpression': scheduleExpression,
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfigScheduleConfig.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigScheduleConfig(
      scheduleExpression: (map['scheduleExpression'] as String).input(),
    );
  }
}

