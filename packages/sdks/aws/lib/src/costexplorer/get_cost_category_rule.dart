// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule_inherited_value.dart';
import 'get_cost_category_rule_rule.dart';

class GetCostCategoryRule {
  /// Configuration block for the value the line item is categorized as if the line item contains the matched dimension. See below.
  final List<GetCostCategoryRuleInheritedValue> inheritedValues;
  /// Configuration block for the `Expression` object used to categorize costs. See below.
  final List<GetCostCategoryRuleRule> rules;
  /// Parameter type.
  final String type;
  /// Default value for the cost category.
  final String value;

  /// Creates a new [GetCostCategoryRule].
  /// [inheritedValues] Configuration block for the value the line item is categorized as if the line item contains the matched dimension. See below.
  /// [rules] Configuration block for the `Expression` object used to categorize costs. See below.
  /// [type] Parameter type.
  /// [value] Default value for the cost category.
  GetCostCategoryRule({
    required this.inheritedValues,
    required this.rules,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inheritedValues': pulumi.Input.encodeList<GetCostCategoryRuleInheritedValue, Map<String, dynamic>>(inheritedValues, (value) => value.toMap()),
      'rules': pulumi.Input.encodeList<GetCostCategoryRuleRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'type': type,
      'value': value,
    };
  }

  factory GetCostCategoryRule.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRule(
      inheritedValues: pulumi.Input.decodeList<GetCostCategoryRuleInheritedValue>(map['inheritedValues'], (value) => GetCostCategoryRuleInheritedValue.fromMap((value as Map).cast<String, dynamic>())),
      rules: pulumi.Input.decodeList<GetCostCategoryRuleRule>(map['rules'], (value) => GetCostCategoryRuleRule.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

