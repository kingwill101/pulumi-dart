// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleActionPublishToSns {
  /// Policy applied when the action fails.
  final pulumi.Input<String>? actionFailurePolicy;
  /// Email encoding in the notification.
  final pulumi.Input<String>? encoding;
  /// Notification payload type.
  final pulumi.Input<String>? payloadType;
  /// ARN of the IAM role used to publish the email.
  final pulumi.Input<String> roleArn;
  /// ARN of the SNS topic.
  final pulumi.Input<String> topicArn;

  /// Creates a new [RuleSetRuleActionPublishToSns].
  /// [actionFailurePolicy] Policy applied when the action fails.
  /// [encoding] Email encoding in the notification.
  /// [payloadType] Notification payload type.
  /// [roleArn] ARN of the IAM role used to publish the email.
  /// [topicArn] ARN of the SNS topic.
  const RuleSetRuleActionPublishToSns({
    this.actionFailurePolicy,
    this.encoding,
    this.payloadType,
    required this.roleArn,
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionFailurePolicy': ?actionFailurePolicy,
      'encoding': ?encoding,
      'payloadType': ?payloadType,
      'roleArn': roleArn,
      'topicArn': topicArn,
    };
  }

  factory RuleSetRuleActionPublishToSns.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleActionPublishToSns(
      actionFailurePolicy: (() { final guardedValue = map['actionFailurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payloadType: (() { final guardedValue = map['payloadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      topicArn: pulumi.Input.fromValue(map['topicArn'] as String),
    );
  }
}
