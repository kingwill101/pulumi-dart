// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_rule_condition_verdict_expression_evaluate.dart';

class RuleSetRuleConditionVerdictExpression {
  /// Left-hand operand of the expression. Exactly one of `analysis` or `attribute` must be configured.
  final pulumi.Input<RuleSetRuleConditionVerdictExpressionEvaluate?>? evaluate;
  /// Verdict matching operator. Valid values are `EQUALS` and `NOT_EQUALS`.
  final pulumi.Input<String> operator;
  /// List of verdict values. Valid values are `PASS`, `FAIL`, `GRAY`, and `PROCESSING_FAILED`. Between 1 and 10 values are supported.
  final pulumi.Input<List<String>> values;

  /// Creates a new [RuleSetRuleConditionVerdictExpression].
  /// [evaluate] Left-hand operand of the expression. Exactly one of `analysis` or `attribute` must be configured.
  /// [operator] Verdict matching operator. Valid values are `EQUALS` and `NOT_EQUALS`.
  /// [values] List of verdict values. Valid values are `PASS`, `FAIL`, `GRAY`, and `PROCESSING_FAILED`. Between 1 and 10 values are supported.
  const RuleSetRuleConditionVerdictExpression({
    this.evaluate,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluate': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleConditionVerdictExpressionEvaluate, Map<String, dynamic>>(evaluate, (value) => value.toMap()),
      'operator': operator,
      'values': values,
    };
  }

  factory RuleSetRuleConditionVerdictExpression.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleConditionVerdictExpression(
      evaluate: (() { final guardedValue = map['evaluate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleConditionVerdictExpressionEvaluate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
