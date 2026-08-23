// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_rule_condition_string_expression_evaluate.dart';

class RuleSetRuleConditionStringExpression {
  /// Left-hand operand of the expression. Exactly one of `analysis`, `attribute`, `clientCertificateAttribute`, or `mimeHeaderAttribute` must be configured.
  final pulumi.Input<RuleSetRuleConditionStringExpressionEvaluate>? evaluate;
  /// String matching operator. Valid values are `EQUALS`, `NOT_EQUALS`, `STARTS_WITH`, `ENDS_WITH`, and `CONTAINS`.
  final pulumi.Input<String> operator;
  /// List of strings against which the selected operand is evaluated. Between 1 and 10 values are supported, each up to 4096 characters.
  final pulumi.Input<List<String>> values;

  /// Creates a new [RuleSetRuleConditionStringExpression].
  /// [evaluate] Left-hand operand of the expression. Exactly one of `analysis`, `attribute`, `clientCertificateAttribute`, or `mimeHeaderAttribute` must be configured.
  /// [operator] String matching operator. Valid values are `EQUALS`, `NOT_EQUALS`, `STARTS_WITH`, `ENDS_WITH`, and `CONTAINS`.
  /// [values] List of strings against which the selected operand is evaluated. Between 1 and 10 values are supported, each up to 4096 characters.
  const RuleSetRuleConditionStringExpression({
    this.evaluate,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluate': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleConditionStringExpressionEvaluate, Map<String, dynamic>>(evaluate, (value) => value.toMap()),
      'operator': operator,
      'values': values,
    };
  }

  factory RuleSetRuleConditionStringExpression.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleConditionStringExpression(
      evaluate: (() { final guardedValue = map['evaluate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleConditionStringExpressionEvaluate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
