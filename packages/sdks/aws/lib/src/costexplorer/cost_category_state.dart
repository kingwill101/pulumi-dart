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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? defaultValue,
    pulumi.Output<String>? effectiveEnd,
    pulumi.Output<String>? effectiveStart,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ruleVersion,
    pulumi.Output<List<CostCategoryRule>>? rules,
    pulumi.Output<List<CostCategorySplitChargeRule>>? splitChargeRules,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      defaultValue = pulumi.Input.asOptionalInput<String>(defaultValue),
      effectiveEnd = pulumi.Input.asOptionalInput<String>(effectiveEnd),
      effectiveStart = pulumi.Input.asOptionalInput<String>(effectiveStart),
      name = pulumi.Input.asOptionalInput<String>(name),
      ruleVersion = pulumi.Input.asOptionalInput<String>(ruleVersion),
      rules = pulumi.Input.asOptionalInput<List<CostCategoryRule>>(rules),
      splitChargeRules = pulumi.Input.asOptionalInput<List<CostCategorySplitChargeRule>>(splitChargeRules),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      defaultValue: map['defaultValue'] == null ? null : pulumi.Output.create<String>(map['defaultValue'] as String),
      effectiveEnd: map['effectiveEnd'] == null ? null : pulumi.Output.create<String>(map['effectiveEnd'] as String),
      effectiveStart: map['effectiveStart'] == null ? null : pulumi.Output.create<String>(map['effectiveStart'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ruleVersion: map['ruleVersion'] == null ? null : pulumi.Output.create<String>(map['ruleVersion'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<CostCategoryRule>>(pulumi.Input.decodeList<CostCategoryRule>(map['rules'], (value) => CostCategoryRule.fromMap((value as Map).cast<String, dynamic>()))),
      splitChargeRules: map['splitChargeRules'] == null ? null : pulumi.Output.create<List<CostCategorySplitChargeRule>>(pulumi.Input.decodeList<CostCategorySplitChargeRule>(map['splitChargeRules'], (value) => CostCategorySplitChargeRule.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

