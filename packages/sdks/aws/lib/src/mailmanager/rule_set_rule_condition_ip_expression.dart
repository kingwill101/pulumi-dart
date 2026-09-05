// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_rule_condition_ip_expression_evaluate.dart';

class RuleSetRuleConditionIpExpression {
  /// Left-hand operand of the expression.
  final pulumi.Input<RuleSetRuleConditionIpExpressionEvaluate?>? evaluate;
  /// CIDR matching operator. Valid values are `CIDR_MATCHES` and `NOT_CIDR_MATCHES`.
  final pulumi.Input<String> operator;
  /// List of IP CIDR ranges against which the sender IP address is evaluated. Between 1 and 10 values are supported.
  final pulumi.Input<List<String>> values;

  /// Creates a new [RuleSetRuleConditionIpExpression].
  /// [evaluate] Left-hand operand of the expression.
  /// [operator] CIDR matching operator. Valid values are `CIDR_MATCHES` and `NOT_CIDR_MATCHES`.
  /// [values] List of IP CIDR ranges against which the sender IP address is evaluated. Between 1 and 10 values are supported.
  const RuleSetRuleConditionIpExpression({
    this.evaluate,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluate': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleConditionIpExpressionEvaluate, Map<String, dynamic>>(evaluate, (value) => value.toMap()),
      'operator': operator,
      'values': values,
    };
  }

  factory RuleSetRuleConditionIpExpression.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleConditionIpExpression(
      evaluate: (() { final guardedValue = map['evaluate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleConditionIpExpressionEvaluate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
