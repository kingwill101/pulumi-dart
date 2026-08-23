// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_policy_policy_statement_condition_string_expression_evaluate.dart';

class TrafficPolicyPolicyStatementConditionStringExpression {
  /// Operand evaluated by the expression. See `policy_statement.condition.string_expression.evaluate` Block below.
  final pulumi.Input<TrafficPolicyPolicyStatementConditionStringExpressionEvaluate>? evaluate;
  /// String operator used for the comparison.
  final pulumi.Input<String> operator;
  /// Strings used for the comparison.
  final pulumi.Input<List<String>> values;

  /// Creates a new [TrafficPolicyPolicyStatementConditionStringExpression].
  /// [evaluate] Operand evaluated by the expression. See `policy_statement.condition.string_expression.evaluate` Block below.
  /// [operator] String operator used for the comparison.
  /// [values] Strings used for the comparison.
  const TrafficPolicyPolicyStatementConditionStringExpression({
    this.evaluate,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluate': ?pulumi.Input.mapOptionalInputValue<TrafficPolicyPolicyStatementConditionStringExpressionEvaluate, Map<String, dynamic>>(evaluate, (value) => value.toMap()),
      'operator': operator,
      'values': values,
    };
  }

  factory TrafficPolicyPolicyStatementConditionStringExpression.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyPolicyStatementConditionStringExpression(
      evaluate: (() { final guardedValue = map['evaluate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficPolicyPolicyStatementConditionStringExpressionEvaluate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
