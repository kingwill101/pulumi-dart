// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleUnlessDmarcExpression {
  /// DMARC policy matching operator. Valid values are `EQUALS` and `NOT_EQUALS`.
  final pulumi.Input<String> operator;
  /// List of DMARC policy values. Valid values are `NONE`, `QUARANTINE`, and `REJECT`.
  final pulumi.Input<List<String>> values;

  /// Creates a new [RuleSetRuleUnlessDmarcExpression].
  /// [operator] DMARC policy matching operator. Valid values are `EQUALS` and `NOT_EQUALS`.
  /// [values] List of DMARC policy values. Valid values are `NONE`, `QUARANTINE`, and `REJECT`.
  const RuleSetRuleUnlessDmarcExpression({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory RuleSetRuleUnlessDmarcExpression.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleUnlessDmarcExpression(
      operator: pulumi.Input.fromValue(map['operator'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
