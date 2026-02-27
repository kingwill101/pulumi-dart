// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentMonitor {
  /// ARN of the Amazon CloudWatch alarm.
  final String alarmArn;

  /// ARN of an IAM role for AWS AppConfig to monitor `alarm_arn`.
  final String? alarmRoleArn;

  EnvironmentMonitor({
    required this.alarmArn,
    this.alarmRoleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alarmArn'] = alarmArn;
    final alarmRoleArnValue = alarmRoleArn;
    if (alarmRoleArnValue != null) {
      map['alarmRoleArn'] = alarmRoleArnValue;
    }
    return map;
  }

  factory EnvironmentMonitor.fromMap(Map<String, dynamic> map) {
    return EnvironmentMonitor(
      alarmArn: map['alarmArn'] as String,
      alarmRoleArn:
          map['alarmRoleArn'] == null ? null : map['alarmRoleArn'] as String,
    );
  }
}
