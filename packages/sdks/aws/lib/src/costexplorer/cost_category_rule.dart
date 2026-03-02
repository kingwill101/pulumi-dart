// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_category_rule_inherited_value.dart';
import 'cost_category_rule_rule.dart';

class CostCategoryRule {
  /// Configuration block for the value the line item is categorized as if the line item contains the matched dimension. See below.
  final pulumi.Input<CostCategoryRuleInheritedValue>? inheritedValue;
  /// Configuration block for the `Expression` object used to categorize costs. See below.
  final pulumi.Input<CostCategoryRuleRule>? rule;
  /// You can define the CostCategoryRule rule type as either `REGULAR` or `INHERITED_VALUE`.
  final pulumi.Input<String>? type;
  /// Default value for the cost category.
  final pulumi.Input<String>? value;

  /// Creates a new [CostCategoryRule].
  /// [inheritedValue] Configuration block for the value the line item is categorized as if the line item contains the matched dimension. See below.
  /// [rule] Configuration block for the `Expression` object used to categorize costs. See below.
  /// [type] You can define the CostCategoryRule rule type as either `REGULAR` or `INHERITED_VALUE`.
  /// [value] Default value for the cost category.
  CostCategoryRule({
    this.inheritedValue,
    this.rule,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inheritedValue': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleInheritedValue, Map<String, dynamic>>(inheritedValue, (value) => value.toMap()),
      'rule': ?pulumi.Input.mapOptionalInputValue<CostCategoryRuleRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'type': ?type,
      'value': ?value,
    };
  }

  factory CostCategoryRule.fromMap(Map<String, dynamic> map) {
    return CostCategoryRule(
      inheritedValue: map['inheritedValue'] == null ? null : (CostCategoryRuleInheritedValue.fromMap((map['inheritedValue'] as Map).cast<String, dynamic>())).input(),
      rule: map['rule'] == null ? null : (CostCategoryRuleRule.fromMap((map['rule'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

