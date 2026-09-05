// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleActionInvokeLambda {
  /// Policy applied when the action fails.
  final pulumi.Input<String?>? actionFailurePolicy;
  /// ARN of the Lambda function.
  final pulumi.Input<String> functionArn;
  /// Lambda invocation type.
  final pulumi.Input<String> invocationType;
  /// Maximum retry time in minutes.
  final pulumi.Input<int?>? retryTimeMinutes;
  /// ARN of the IAM role used to invoke the function.
  final pulumi.Input<String> roleArn;

  /// Creates a new [RuleSetRuleActionInvokeLambda].
  /// [actionFailurePolicy] Policy applied when the action fails.
  /// [functionArn] ARN of the Lambda function.
  /// [invocationType] Lambda invocation type.
  /// [retryTimeMinutes] Maximum retry time in minutes.
  /// [roleArn] ARN of the IAM role used to invoke the function.
  const RuleSetRuleActionInvokeLambda({
    this.actionFailurePolicy,
    required this.functionArn,
    required this.invocationType,
    this.retryTimeMinutes,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionFailurePolicy': ?actionFailurePolicy,
      'functionArn': functionArn,
      'invocationType': invocationType,
      'retryTimeMinutes': ?retryTimeMinutes,
      'roleArn': roleArn,
    };
  }

  factory RuleSetRuleActionInvokeLambda.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleActionInvokeLambda(
      actionFailurePolicy: (() { final guardedValue = map['actionFailurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionArn: pulumi.Input.fromValue(map['functionArn'] as String),
      invocationType: pulumi.Input.fromValue(map['invocationType'] as String),
      retryTimeMinutes: (() { final guardedValue = map['retryTimeMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
