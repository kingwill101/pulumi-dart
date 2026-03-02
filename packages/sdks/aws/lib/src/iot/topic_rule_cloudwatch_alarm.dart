// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleCloudwatchAlarm {
  /// The CloudWatch alarm name.
  final pulumi.Input<String> alarmName;
  /// The IAM role ARN that allows access to the CloudWatch alarm.
  final pulumi.Input<String> roleArn;
  /// The reason for the alarm change.
  final pulumi.Input<String> stateReason;
  /// The value of the alarm state. Acceptable values are: OK, ALARM, INSUFFICIENT_DATA.
  final pulumi.Input<String> stateValue;

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
    return <String, dynamic>{
      'alarmName': alarmName,
      'roleArn': roleArn,
      'stateReason': stateReason,
      'stateValue': stateValue,
    };
  }

  factory TopicRuleCloudwatchAlarm.fromMap(Map<String, dynamic> map) {
    return TopicRuleCloudwatchAlarm(
      alarmName: (map['alarmName'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
      stateReason: (map['stateReason'] as String).input(),
      stateValue: (map['stateValue'] as String).input(),
    );
  }
}

