// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_rule_condition_number_expression_evaluate.dart';

class RuleSetRuleConditionNumberExpression {
  /// Left-hand operand of the expression.
  final pulumi.Input<RuleSetRuleConditionNumberExpressionEvaluate>? evaluate;
  /// Numeric comparison operator. Valid values are `EQUALS`, `NOT_EQUALS`, `LESS_THAN`, `GREATER_THAN`, `LESS_THAN_OR_EQUAL`, and `GREATER_THAN_OR_EQUAL`.
  final pulumi.Input<String> operator;
  /// Numeric value to compare against.
  final pulumi.Input<double> value;

  /// Creates a new [RuleSetRuleConditionNumberExpression].
  /// [evaluate] Left-hand operand of the expression.
  /// [operator] Numeric comparison operator. Valid values are `EQUALS`, `NOT_EQUALS`, `LESS_THAN`, `GREATER_THAN`, `LESS_THAN_OR_EQUAL`, and `GREATER_THAN_OR_EQUAL`.
  /// [value] Numeric value to compare against.
  const RuleSetRuleConditionNumberExpression({
    this.evaluate,
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluate': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleConditionNumberExpressionEvaluate, Map<String, dynamic>>(evaluate, (value) => value.toMap()),
      'operator': operator,
      'value': value,
    };
  }

  factory RuleSetRuleConditionNumberExpression.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleConditionNumberExpression(
      evaluate: (() { final guardedValue = map['evaluate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleConditionNumberExpressionEvaluate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      value: pulumi.Input.fromValue(map['value'] as double),
    );
  }
}
