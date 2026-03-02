// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_category_rule.dart';
import 'cost_category_split_charge_rule.dart';

/// {@template pulumi_costexplorer_cost_category_cost_category_args_doc}
/// The set of arguments for CostCategory.
/// {@endtemplate}
/// {@macro pulumi_costexplorer_cost_category_cost_category_args_doc}
class CostCategoryArgs {
  /// Default value for the cost category.
  final pulumi.Input<String>? defaultValue;
  /// The Cost Category's effective start date. It can only be a billing start date (first day of the month). If the date isn't provided, it's the first day of the current month. Dates can't be before the previous twelve months, or in the future. For example `2022-11-01T00:00:00Z`.
  final pulumi.Input<String>? effectiveStart;
  /// Unique name for the Cost Category.
  final pulumi.Input<String>? name;
  /// Rule schema version in this particular Cost Category.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> ruleVersion;
  /// Configuration block for the Cost Category rules used to categorize costs. See below.
  final pulumi.Input<List<CostCategoryRule>> rules;
  /// Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below.
  final pulumi.Input<List<CostCategorySplitChargeRule>>? splitChargeRules;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CostCategoryArgs].
  /// [defaultValue] Default value for the cost category.
  /// [effectiveStart] The Cost Category's effective start date. It can only be a billing start date (first day of the month). If the date isn't provided, it's the first day of the current month. Dates can't be before the previous twelve months, or in the future. For example `2022-11-01T00:00:00Z`.
  /// [name] Unique name for the Cost Category.
  /// [ruleVersion] Rule schema version in this particular Cost Category.
  /// [rules] Configuration block for the Cost Category rules used to categorize costs. See below.
  /// [splitChargeRules] Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CostCategoryArgs({
    this.defaultValue,
    this.effectiveStart,
    this.name,
    required this.ruleVersion,
    required this.rules,
    this.splitChargeRules,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'effectiveStart': ?effectiveStart,
      'name': ?name,
      'ruleVersion': ruleVersion,
      'rules': pulumi.Input.mapInputValue<List<CostCategoryRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<CostCategoryRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'splitChargeRules': ?pulumi.Input.mapOptionalInputValue<List<CostCategorySplitChargeRule>, List<Map<String, dynamic>>>(splitChargeRules, (value) => pulumi.Input.encodeList<CostCategorySplitChargeRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory CostCategoryArgs.fromMap(Map<String, dynamic> map) {
    return CostCategoryArgs(
      defaultValue: map['defaultValue'] == null ? null : (map['defaultValue'] as String).input(),
      effectiveStart: map['effectiveStart'] == null ? null : (map['effectiveStart'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ruleVersion: (map['ruleVersion'] as String).input(),
      rules: (pulumi.Input.decodeList<CostCategoryRule>(map['rules'], (value) => CostCategoryRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      splitChargeRules: map['splitChargeRules'] == null ? null : (pulumi.Input.decodeList<CostCategorySplitChargeRule>(map['splitChargeRules'], (value) => CostCategorySplitChargeRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

