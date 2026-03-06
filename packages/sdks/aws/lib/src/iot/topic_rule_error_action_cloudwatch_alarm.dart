// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleErrorActionCloudwatchAlarm {
  /// The CloudWatch alarm name.
  final pulumi.Input<String> alarmName;
  /// The IAM role ARN that allows access to the CloudWatch alarm.
  final pulumi.Input<String> roleArn;
  /// The reason for the alarm change.
  final pulumi.Input<String> stateReason;
  /// The value of the alarm state. Acceptable values are: OK, ALARM, INSUFFICIENT_DATA.
  final pulumi.Input<String> stateValue;

  /// Creates a new [TopicRuleErrorActionCloudwatchAlarm].
  /// [alarmName] The CloudWatch alarm name.
  /// [roleArn] The IAM role ARN that allows access to the CloudWatch alarm.
  /// [stateReason] The reason for the alarm change.
  /// [stateValue] The value of the alarm state. Acceptable values are: OK, ALARM, INSUFFICIENT_DATA.
  const TopicRuleErrorActionCloudwatchAlarm({
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

  factory TopicRuleErrorActionCloudwatchAlarm.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionCloudwatchAlarm(
      alarmName: pulumi.Input.fromValue(map['alarmName'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      stateReason: pulumi.Input.fromValue(map['stateReason'] as String),
      stateValue: pulumi.Input.fromValue(map['stateValue'] as String),
    );
  }
}

