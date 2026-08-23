// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleActionDeliverToMailbox {
  /// Policy applied when the action fails.
  final pulumi.Input<String>? actionFailurePolicy;
  /// ARN of the WorkMail organization.
  final pulumi.Input<String> mailboxArn;
  /// ARN of the IAM role used to deliver the email.
  final pulumi.Input<String> roleArn;

  /// Creates a new [RuleSetRuleActionDeliverToMailbox].
  /// [actionFailurePolicy] Policy applied when the action fails.
  /// [mailboxArn] ARN of the WorkMail organization.
  /// [roleArn] ARN of the IAM role used to deliver the email.
  const RuleSetRuleActionDeliverToMailbox({
    this.actionFailurePolicy,
    required this.mailboxArn,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionFailurePolicy': ?actionFailurePolicy,
      'mailboxArn': mailboxArn,
      'roleArn': roleArn,
    };
  }

  factory RuleSetRuleActionDeliverToMailbox.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleActionDeliverToMailbox(
      actionFailurePolicy: (() { final guardedValue = map['actionFailurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mailboxArn: pulumi.Input.fromValue(map['mailboxArn'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
