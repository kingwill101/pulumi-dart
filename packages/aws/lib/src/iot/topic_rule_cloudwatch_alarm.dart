// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleCloudwatchAlarm {
  /// The CloudWatch alarm name.
  final String alarmName;

  /// The IAM role ARN that allows access to the CloudWatch alarm.
  final String roleArn;

  /// The reason for the alarm change.
  final String stateReason;

  /// The value of the alarm state. Acceptable values are: OK, ALARM, INSUFFICIENT_DATA.
  final String stateValue;

  /// Creates a new [TopicRuleCloudwatchAlarm].
  /// [alarmName] The CloudWatch alarm name.
  /// [roleArn] The IAM role ARN that allows access to the CloudWatch alarm.
  /// [stateReason] The reason for the alarm change.
  /// [stateValue] The value of the alarm state. Acceptable values are: OK, ALARM, INSUFFICIENT_DATA.
  TopicRuleCloudwatchAlarm({
    required this.alarmName,
    required this.roleArn,
    required this.stateReason,
    required this.stateValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alarmName'] = alarmName;
    map['roleArn'] = roleArn;
    map['stateReason'] = stateReason;
    map['stateValue'] = stateValue;
    return map;
  }

  factory TopicRuleCloudwatchAlarm.fromMap(Map<String, dynamic> map) {
    return TopicRuleCloudwatchAlarm(
      alarmName: map['alarmName'] as String,
      roleArn: map['roleArn'] as String,
      stateReason: map['stateReason'] as String,
      stateValue: map['stateValue'] as String,
    );
  }
}
