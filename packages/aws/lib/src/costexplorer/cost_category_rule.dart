// ignore_for_file: unused_element, unnecessary_cast

import 'cost_category_rule_inherited_value.dart';
import 'cost_category_rule_rule.dart';

class CostCategoryRule {
  /// Configuration block for the value the line item is categorized as if the line item contains the matched dimension. See below.
  final CostCategoryRuleInheritedValue? inheritedValue;

  /// Configuration block for the `Expression` object used to categorize costs. See below.
  final CostCategoryRuleRule? rule;

  /// You can define the CostCategoryRule rule type as either `REGULAR` or `INHERITED_VALUE`.
  final String? type;

  /// Default value for the cost category.
  final String? value;

  /// Creates a new [CostCategoryRule].
  /// [inheritedValue] Configuration block for the value the line item is categorized as if the line item contains the matched dimension. See below.
  /// [rule] Configuration block for the `Expression` object used to categorize costs. See below.
  /// [type] You can define the CostCategoryRule rule type as either `REGULAR` or `INHERITED_VALUE`.
  /// [value] Default value for the cost category.
  CostCategoryRule({this.inheritedValue, this.rule, this.type, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inheritedValue': ?inheritedValue == null
          ? null
          : inheritedValue!.toMap(),
      'rule': ?rule == null ? null : rule!.toMap(),
      'type': ?type,
      'value': ?value,
    };
  }

  factory CostCategoryRule.fromMap(Map<String, dynamic> map) {
    return CostCategoryRule(
      inheritedValue: map['inheritedValue'] == null
          ? null
          : CostCategoryRuleInheritedValue.fromMap(
              (map['inheritedValue'] as Map).cast<String, dynamic>(),
            ),
      rule: map['rule'] == null
          ? null
          : CostCategoryRuleRule.fromMap(
              (map['rule'] as Map).cast<String, dynamic>(),
            ),
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
