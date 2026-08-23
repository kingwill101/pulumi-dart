// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleActionSend {
  /// Policy applied when the action fails.
  final pulumi.Input<String>? actionFailurePolicy;
  /// ARN of the IAM role used to send the email.
  final pulumi.Input<String> roleArn;

  /// Creates a new [RuleSetRuleActionSend].
  /// [actionFailurePolicy] Policy applied when the action fails.
  /// [roleArn] ARN of the IAM role used to send the email.
  const RuleSetRuleActionSend({
    this.actionFailurePolicy,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionFailurePolicy': ?actionFailurePolicy,
      'roleArn': roleArn,
    };
  }

  factory RuleSetRuleActionSend.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleActionSend(
      actionFailurePolicy: (() { final guardedValue = map['actionFailurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
