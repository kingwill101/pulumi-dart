// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_category_rule.dart';
import 'cost_category_split_charge_rule.dart';

/// Input properties used for looking up and filtering CostCategory resources.
class CostCategoryState {
  /// ARN of the cost category.
  final pulumi.Input<String>? arn;
  /// Default value for the cost category.
  final pulumi.Input<String>? defaultValue;
  /// Effective end data of your Cost Category.
  final pulumi.Input<String>? effectiveEnd;
  /// The Cost Category's effective start date. It can only be a billing start date (first day of the month). If the date isn't provided, it's the first day of the current month. Dates can't be before the previous twelve months, or in the future. For example `2022-11-01T00:00:00Z`.
  final pulumi.Input<String>? effectiveStart;
  /// Unique name for the Cost Category.
  final pulumi.Input<String>? name;
  /// Rule schema version in this particular Cost Category.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? ruleVersion;
  /// Configuration block for the Cost Category rules used to categorize costs. See below.
  final pulumi.Input<List<CostCategoryRule>>? rules;
  /// Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below.
  final pulumi.Input<List<CostCategorySplitChargeRule>>? splitChargeRules;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CostCategoryState].
  /// [arn] ARN of the cost category.
  /// [defaultValue] Default value for the cost category.
  /// [effectiveEnd] Effective end data of your Cost Category.
  /// [effectiveStart] The Cost Category's effective start date. It can only be a billing start date (first day of the month). If the date isn't provided, it's the first day of the current month. Dates can't be before the previous twelve months, or in the future. For example `2022-11-01T00:00:00Z`.
  /// [name] Unique name for the Cost Category.
  /// [ruleVersion] Rule schema version in this particular Cost Category.
  /// [rules] Configuration block for the Cost Category rules used to categorize costs. See below.
  /// [splitChargeRules] Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CostCategoryState({
    this.arn,
    this.defaultValue,
    this.effectiveEnd,
    this.effectiveStart,
    this.name,
    this.ruleVersion,
    this.rules,
    this.splitChargeRules,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'defaultValue': ?defaultValue,
      'effectiveEnd': ?effectiveEnd,
      'effectiveStart': ?effectiveStart,
      'name': ?name,
      'ruleVersion': ?ruleVersion,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<CostCategoryRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<CostCategoryRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'splitChargeRules': ?pulumi.Input.mapOptionalInputValue<List<CostCategorySplitChargeRule>, List<Map<String, dynamic>>>(splitChargeRules, (value) => pulumi.Input.encodeList<CostCategorySplitChargeRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CostCategoryState.fromMap(Map<String, dynamic> map) {
    return CostCategoryState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      defaultValue: map['defaultValue'] == null ? null : ((map['defaultValue'] as String).input()).input(),
      effectiveEnd: map['effectiveEnd'] == null ? null : ((map['effectiveEnd'] as String).input()).input(),
      effectiveStart: map['effectiveStart'] == null ? null : ((map['effectiveStart'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      ruleVersion: map['ruleVersion'] == null ? null : ((map['ruleVersion'] as String).input()).input(),
      rules: map['rules'] == null ? null : ((pulumi.Input.decodeList<CostCategoryRule>(map['rules']!, (value) => CostCategoryRule.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      splitChargeRules: map['splitChargeRules'] == null ? null : ((pulumi.Input.decodeList<CostCategorySplitChargeRule>(map['splitChargeRules']!, (value) => CostCategorySplitChargeRule.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

