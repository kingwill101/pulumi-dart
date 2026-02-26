// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cost_category_rule/get_cost_category_rule.dart';
import '../get_cost_category_split_charge_rule/get_cost_category_split_charge_rule.dart';

/// Result data returned by getCostCategory.
class GetCostCategoryResult {
  final String costCategoryArn;

  /// Default value for the cost category.
  final String defaultValue;

  /// Effective end data of your Cost Category.
  final String effectiveEnd;

  /// Effective state data of your Cost Category.
  final String effectiveStart;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// Rule schema version in this particular Cost Category.
  final String ruleVersion;

  /// Configuration block for the `Expression` object used to categorize costs. See below.
  final List<GetCostCategoryRule> rules;

  /// Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below.
  final List<GetCostCategorySplitChargeRule> splitChargeRules;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final Map<String, String> tags;

  GetCostCategoryResult({
    required this.costCategoryArn,
    required this.defaultValue,
    required this.effectiveEnd,
    required this.effectiveStart,
    required this.id,
    required this.name,
    required this.ruleVersion,
    required this.rules,
    required this.splitChargeRules,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['costCategoryArn'] = costCategoryArn;
    map['defaultValue'] = defaultValue;
    map['effectiveEnd'] = effectiveEnd;
    map['effectiveStart'] = effectiveStart;
    map['id'] = id;
    map['name'] = name;
    map['ruleVersion'] = ruleVersion;
    map['rules'] = Input.encodeList<GetCostCategoryRule, Map<String, dynamic>>(
        rules, (value) => value.toMap());
    map['splitChargeRules'] =
        Input.encodeList<GetCostCategorySplitChargeRule, Map<String, dynamic>>(
            splitChargeRules, (value) => value.toMap());
    map['tags'] = tags;
    return map;
  }

  factory GetCostCategoryResult.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryResult(
      costCategoryArn: map['costCategoryArn'] as String,
      defaultValue: map['defaultValue'] as String,
      effectiveEnd: map['effectiveEnd'] as String,
      effectiveStart: map['effectiveStart'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      ruleVersion: map['ruleVersion'] as String,
      rules: Input.decodeList<GetCostCategoryRule>(
          map['rules'],
          (value) => GetCostCategoryRule.fromMap(
              (value as Map).cast<String, dynamic>())),
      splitChargeRules: Input.decodeList<GetCostCategorySplitChargeRule>(
          map['splitChargeRules'],
          (value) => GetCostCategorySplitChargeRule.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
