// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipal {
  /// IAM principal ARN. Wildcards are allowed with the `StringLike` operator.
  final pulumi.Input<String> arn;
  /// Match operator, one of `StringEquals` or `StringLike`. Defaults to `StringEquals`.
  final pulumi.Input<String>? operator;

  /// Creates a new [AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipal].
  /// [arn] IAM principal ARN. Wildcards are allowed with the `StringLike` operator.
  /// [operator] Match operator, one of `StringEquals` or `StringLike`. Defaults to `StringEquals`.
  const AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipal({
    required this.arn,
    this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'operator': ?operator,
    };
  }

  factory AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipal.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayRuleConditionMatchPrincipalsAnyOfIamPrincipal(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
