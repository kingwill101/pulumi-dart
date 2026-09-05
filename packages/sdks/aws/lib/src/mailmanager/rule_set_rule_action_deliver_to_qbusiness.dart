// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleActionDeliverToQBusiness {
  /// Policy applied when the action fails.
  final pulumi.Input<String?>? actionFailurePolicy;
  /// Q Business application identifier.
  final pulumi.Input<String> applicationId;
  /// Q Business index identifier.
  final pulumi.Input<String> indexId;
  /// ARN of the IAM role used to deliver the email.
  final pulumi.Input<String> roleArn;

  /// Creates a new [RuleSetRuleActionDeliverToQBusiness].
  /// [actionFailurePolicy] Policy applied when the action fails.
  /// [applicationId] Q Business application identifier.
  /// [indexId] Q Business index identifier.
  /// [roleArn] ARN of the IAM role used to deliver the email.
  const RuleSetRuleActionDeliverToQBusiness({
    this.actionFailurePolicy,
    required this.applicationId,
    required this.indexId,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionFailurePolicy': ?actionFailurePolicy,
      'applicationId': applicationId,
      'indexId': indexId,
      'roleArn': roleArn,
    };
  }

  factory RuleSetRuleActionDeliverToQBusiness.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleActionDeliverToQBusiness(
      actionFailurePolicy: (() { final guardedValue = map['actionFailurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      indexId: pulumi.Input.fromValue(map['indexId'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
