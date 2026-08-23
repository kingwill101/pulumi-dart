// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_policy_policy_statement_condition_tls_expression_evaluate.dart';

class TrafficPolicyPolicyStatementConditionTlsExpression {
  /// Operand evaluated by the expression. See `policy_statement.condition.tls_expression.evaluate` Block below.
  final pulumi.Input<TrafficPolicyPolicyStatementConditionTlsExpressionEvaluate>? evaluate;
  /// TLS policy operator used for the comparison.
  final pulumi.Input<String> operator;
  /// TLS policy used for the comparison.
  final pulumi.Input<String> value;

  /// Creates a new [TrafficPolicyPolicyStatementConditionTlsExpression].
  /// [evaluate] Operand evaluated by the expression. See `policy_statement.condition.tls_expression.evaluate` Block below.
  /// [operator] TLS policy operator used for the comparison.
  /// [value] TLS policy used for the comparison.
  const TrafficPolicyPolicyStatementConditionTlsExpression({
    this.evaluate,
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluate': ?pulumi.Input.mapOptionalInputValue<TrafficPolicyPolicyStatementConditionTlsExpressionEvaluate, Map<String, dynamic>>(evaluate, (value) => value.toMap()),
      'operator': operator,
      'value': value,
    };
  }

  factory TrafficPolicyPolicyStatementConditionTlsExpression.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyPolicyStatementConditionTlsExpression(
      evaluate: (() { final guardedValue = map['evaluate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficPolicyPolicyStatementConditionTlsExpressionEvaluate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
