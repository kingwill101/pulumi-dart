// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule_inherited_value.dart';
import 'get_cost_category_rule_rule.dart';

class GetCostCategoryRule {
  /// Configuration block for the value the line item is categorized as if the line item contains the matched dimension. See below.
  final pulumi.Input<List<GetCostCategoryRuleInheritedValue>> inheritedValues;
  /// Configuration block for the `Expression` object used to categorize costs. See below.
  final pulumi.Input<List<GetCostCategoryRuleRule>> rules;
  /// Parameter type.
  final pulumi.Input<String> type;
  /// Default value for the cost category.
  final pulumi.Input<String> value;

  /// Creates a new [GetCostCategoryRule].
  /// [inheritedValues] Configuration block for the value the line item is categorized as if the line item contains the matched dimension. See below.
  /// [rules] Configuration block for the `Expression` object used to categorize costs. See below.
  /// [type] Parameter type.
  /// [value] Default value for the cost category.
  const GetCostCategoryRule({
    required this.inheritedValues,
    required this.rules,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inheritedValues': pulumi.Input.mapInputValue<List<GetCostCategoryRuleInheritedValue>, List<Map<String, dynamic>>>(inheritedValues, (value) => pulumi.Input.encodeList<GetCostCategoryRuleInheritedValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rules': pulumi.Input.mapInputValue<List<GetCostCategoryRuleRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetCostCategoryRuleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'value': value,
    };
  }

  factory GetCostCategoryRule.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRule(
      inheritedValues: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleInheritedValue>(map['inheritedValues']!, (value) => GetCostCategoryRuleInheritedValue.fromMap((value as Map).cast<String, dynamic>()))),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCostCategoryRuleRule>(map['rules']!, (value) => GetCostCategoryRuleRule.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
