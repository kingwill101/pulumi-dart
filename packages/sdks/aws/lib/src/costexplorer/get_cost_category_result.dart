// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cost_category_rule.dart';
import 'get_cost_category_split_charge_rule.dart';

/// Result data returned by getCostCategory.
class GetCostCategoryResult {
  final String? costCategoryArn;
  /// Default value for the cost category.
  final String? defaultValue;
  /// Effective end data of your Cost Category.
  final String? effectiveEnd;
  /// Effective state data of your Cost Category.
  final String? effectiveStart;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// Rule schema version in this particular Cost Category.
  final String? ruleVersion;
  /// Configuration block for the `Expression` object used to categorize costs. See below.
  final List<GetCostCategoryRule>? rules;
  /// Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below.
  final List<GetCostCategorySplitChargeRule>? splitChargeRules;
  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final Map<String, String>? tags;

  /// Creates a new [GetCostCategoryResult].
  /// [costCategoryArn] Optional.
  /// [defaultValue] Default value for the cost category.
  /// [effectiveEnd] Effective end data of your Cost Category.
  /// [effectiveStart] Effective state data of your Cost Category.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [ruleVersion] Rule schema version in this particular Cost Category.
  /// [rules] Configuration block for the `Expression` object used to categorize costs. See below.
  /// [splitChargeRules] Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
  const GetCostCategoryResult({
    this.costCategoryArn,
    this.defaultValue,
    this.effectiveEnd,
    this.effectiveStart,
    this.id,
    this.name,
    this.ruleVersion,
    this.rules,
    this.splitChargeRules,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategoryArn': ?costCategoryArn,
      'defaultValue': ?defaultValue,
      'effectiveEnd': ?effectiveEnd,
      'effectiveStart': ?effectiveStart,
      'id': ?id,
      'name': ?name,
      'ruleVersion': ?ruleVersion,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCostCategoryRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'splitChargeRules': ?(() { final guardedValue = splitChargeRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCostCategorySplitChargeRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
    };
  }

  factory GetCostCategoryResult.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryResult(
      costCategoryArn: (() { final guardedValue = map['costCategoryArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveEnd: (() { final guardedValue = map['effectiveEnd']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveStart: (() { final guardedValue = map['effectiveStart']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleVersion: (() { final guardedValue = map['ruleVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCostCategoryRule>(guardedValue, (value) => GetCostCategoryRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      splitChargeRules: (() { final guardedValue = map['splitChargeRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCostCategorySplitChargeRule>(guardedValue, (value) => GetCostCategorySplitChargeRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
