// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_policy_policy_statement_condition_boolean_expression_evaluate.dart';

class TrafficPolicyPolicyStatementConditionBooleanExpression {
  /// Operand evaluated by the expression. See `policy_statement.condition.boolean_expression.evaluate` Block below.
  final pulumi.Input<TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluate>? evaluate;
  /// Boolean operator used for the comparison.
  final pulumi.Input<String> operator;

  /// Creates a new [TrafficPolicyPolicyStatementConditionBooleanExpression].
  /// [evaluate] Operand evaluated by the expression. See `policy_statement.condition.boolean_expression.evaluate` Block below.
  /// [operator] Boolean operator used for the comparison.
  const TrafficPolicyPolicyStatementConditionBooleanExpression({
    this.evaluate,
    required this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluate': ?pulumi.Input.mapOptionalInputValue<TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluate, Map<String, dynamic>>(evaluate, (value) => value.toMap()),
      'operator': operator,
    };
  }

  factory TrafficPolicyPolicyStatementConditionBooleanExpression.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyPolicyStatementConditionBooleanExpression(
      evaluate: (() { final guardedValue = map['evaluate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
    );
  }
}
