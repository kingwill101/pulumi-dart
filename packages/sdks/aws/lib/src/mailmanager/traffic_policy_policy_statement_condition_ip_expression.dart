// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_policy_policy_statement_condition_ip_expression_evaluate.dart';

class TrafficPolicyPolicyStatementConditionIpExpression {
  /// Operand evaluated by the expression. See `policy_statement.condition.ip_expression.evaluate` Block below.
  final pulumi.Input<TrafficPolicyPolicyStatementConditionIpExpressionEvaluate>? evaluate;
  /// IP address operator used for the comparison.
  final pulumi.Input<String> operator;
  /// IPv4 CIDR ranges used for the comparison.
  final pulumi.Input<List<String>> values;

  /// Creates a new [TrafficPolicyPolicyStatementConditionIpExpression].
  /// [evaluate] Operand evaluated by the expression. See `policy_statement.condition.ip_expression.evaluate` Block below.
  /// [operator] IP address operator used for the comparison.
  /// [values] IPv4 CIDR ranges used for the comparison.
  const TrafficPolicyPolicyStatementConditionIpExpression({
    this.evaluate,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluate': ?pulumi.Input.mapOptionalInputValue<TrafficPolicyPolicyStatementConditionIpExpressionEvaluate, Map<String, dynamic>>(evaluate, (value) => value.toMap()),
      'operator': operator,
      'values': values,
    };
  }

  factory TrafficPolicyPolicyStatementConditionIpExpression.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyPolicyStatementConditionIpExpression(
      evaluate: (() { final guardedValue = map['evaluate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficPolicyPolicyStatementConditionIpExpressionEvaluate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
