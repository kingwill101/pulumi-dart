// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cost_category_rule/cost_category_rule.dart';
import '../cost_category_split_charge_rule/cost_category_split_charge_rule.dart';

/// The set of arguments for CostCategory.
class CostCategoryArgs {
  /// Default value for the cost category.
  final Input<String>? defaultValue;

  /// The Cost Category's effective start date. It can only be a billing start date (first day of the month). If the date isn't provided, it's the first day of the current month. Dates can't be before the previous twelve months, or in the future. For example `2022-11-01T00:00:00Z`.
  final Input<String>? effectiveStart;

  /// Unique name for the Cost Category.
  final Input<String>? name;

  /// Rule schema version in this particular Cost Category.
  ///
  /// The following arguments are optional:
  final Input<String> ruleVersion;

  /// Configuration block for the Cost Category rules used to categorize costs. See below.
  final Input<List<CostCategoryRule>> rules;

  /// Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below.
  final Input<List<CostCategorySplitChargeRule>>? splitChargeRules;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
    final map = <String, dynamic>{};
    final defaultValueValue = defaultValue;
    if (defaultValueValue != null) {
      map['defaultValue'] = defaultValueValue;
    }
    final effectiveStartValue = effectiveStart;
    if (effectiveStartValue != null) {
      map['effectiveStart'] = effectiveStartValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['ruleVersion'] = ruleVersion;
    map['rules'] =
        Input.mapInputValue<List<CostCategoryRule>, List<Map<String, dynamic>>>(
            rules,
            (value) => Input.encodeList<CostCategoryRule, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final splitChargeRulesValue = splitChargeRules;
    if (splitChargeRulesValue != null) {
      map['splitChargeRules'] = Input.mapOptionalInputValue<
              List<CostCategorySplitChargeRule>, List<Map<String, dynamic>>>(
          splitChargeRulesValue,
          (value) => Input.encodeList<CostCategorySplitChargeRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CostCategoryArgs.fromMap(Map<String, dynamic> map) {
    return CostCategoryArgs(
      defaultValue: Input.asOptionalInput<String>(map['defaultValue']),
      effectiveStart: Input.asOptionalInput<String>(map['effectiveStart']),
      name: Input.asOptionalInput<String>(map['name']),
      ruleVersion: Input.asInput<String>(map['ruleVersion']),
      rules: Input.asInput<List<CostCategoryRule>>(map['rules']),
      splitChargeRules:
          Input.asOptionalInput<List<CostCategorySplitChargeRule>>(
              map['splitChargeRules']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
