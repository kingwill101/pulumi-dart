// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_rule_condition_boolean_expression_evaluate.dart';

class RuleSetRuleConditionBooleanExpression {
  /// Operand evaluated by the expression. Exactly one of `analysis`, `attribute`, or `isInAddressList` must be configured.
  final pulumi.Input<RuleSetRuleConditionBooleanExpressionEvaluate?>? evaluate;
  /// Boolean matching operator. Valid values are `IS_TRUE` and `IS_FALSE`.
  final pulumi.Input<String> operator;

  /// Creates a new [RuleSetRuleConditionBooleanExpression].
  /// [evaluate] Operand evaluated by the expression. Exactly one of `analysis`, `attribute`, or `isInAddressList` must be configured.
  /// [operator] Boolean matching operator. Valid values are `IS_TRUE` and `IS_FALSE`.
  const RuleSetRuleConditionBooleanExpression({
    this.evaluate,
    required this.operator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluate': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleConditionBooleanExpressionEvaluate, Map<String, dynamic>>(evaluate, (value) => value.toMap()),
      'operator': operator,
    };
  }

  factory RuleSetRuleConditionBooleanExpression.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleConditionBooleanExpression(
      evaluate: (() { final guardedValue = map['evaluate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleConditionBooleanExpressionEvaluate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
    );
  }
}
