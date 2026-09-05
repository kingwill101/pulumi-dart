// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_policy_policy_statement_condition_ipv6_expression_evaluate.dart';

class TrafficPolicyPolicyStatementConditionIpv6Expression {
  /// Operand evaluated by the expression. See `policy_statement.condition.ipv6_expression.evaluate` Block below.
  final pulumi.Input<TrafficPolicyPolicyStatementConditionIpv6ExpressionEvaluate?>? evaluate;
  /// IPv6 address operator used for the comparison.
  final pulumi.Input<String> operator;
  /// IPv6 CIDR ranges used for the comparison.
  final pulumi.Input<List<String>> values;

  /// Creates a new [TrafficPolicyPolicyStatementConditionIpv6Expression].
  /// [evaluate] Operand evaluated by the expression. See `policy_statement.condition.ipv6_expression.evaluate` Block below.
  /// [operator] IPv6 address operator used for the comparison.
  /// [values] IPv6 CIDR ranges used for the comparison.
  const TrafficPolicyPolicyStatementConditionIpv6Expression({
    this.evaluate,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluate': ?pulumi.Input.mapOptionalInputValue<TrafficPolicyPolicyStatementConditionIpv6ExpressionEvaluate, Map<String, dynamic>>(evaluate, (value) => value.toMap()),
      'operator': operator,
      'values': values,
    };
  }

  factory TrafficPolicyPolicyStatementConditionIpv6Expression.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyPolicyStatementConditionIpv6Expression(
      evaluate: (() { final guardedValue = map['evaluate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficPolicyPolicyStatementConditionIpv6ExpressionEvaluate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
