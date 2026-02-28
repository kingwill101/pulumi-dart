// ignore_for_file: unused_element, unnecessary_cast

class GetEnvironmentMonitor {
  /// ARN of the Amazon CloudWatch alarm.
  final String alarmArn;

  /// ARN of an IAM role for AWS AppConfig to monitor.
  final String alarmRoleArn;

  /// Creates a new [GetEnvironmentMonitor].
  /// [alarmArn] ARN of the Amazon CloudWatch alarm.
  /// [alarmRoleArn] ARN of an IAM role for AWS AppConfig to monitor.
  GetEnvironmentMonitor({
    required this.alarmArn,
    required this.alarmRoleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alarmArn'] = alarmArn;
    map['alarmRoleArn'] = alarmRoleArn;
    return map;
  }

  factory GetEnvironmentMonitor.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentMonitor(
      alarmArn: map['alarmArn'] as String,
      alarmRoleArn: map['alarmRoleArn'] as String,
    );
  }
}
