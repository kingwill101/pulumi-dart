// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cost_category_rule_rule_and/get_cost_category_rule_rule_and.dart';
import '../get_cost_category_rule_rule_cost_category/get_cost_category_rule_rule_cost_category.dart';
import '../get_cost_category_rule_rule_dimension/get_cost_category_rule_rule_dimension.dart';
import '../get_cost_category_rule_rule_not/get_cost_category_rule_rule_not.dart';
import '../get_cost_category_rule_rule_or/get_cost_category_rule_rule_or.dart';
import '../get_cost_category_rule_rule_tag/get_cost_category_rule_rule_tag.dart';

class GetCostCategoryRuleRule {
  /// Return results that match both `Dimension` objects.
  final List<GetCostCategoryRuleRuleAnd> ands;

  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final List<GetCostCategoryRuleRuleCostCategory> costCategories;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleDimension> dimensions;

  /// Return results that do not match the `Dimension` object.
  final List<GetCostCategoryRuleRuleNot> nots;

  /// Return results that match either `Dimension` object.
  final List<GetCostCategoryRuleRuleOr> ors;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final List<GetCostCategoryRuleRuleTag> tags;

  GetCostCategoryRuleRule({
    required this.ands,
    required this.costCategories,
    required this.dimensions,
    required this.nots,
    required this.ors,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ands'] =
        Input.encodeList<GetCostCategoryRuleRuleAnd, Map<String, dynamic>>(
            ands, (value) => value.toMap());
    map['costCategories'] = Input.encodeList<
        GetCostCategoryRuleRuleCostCategory,
        Map<String, dynamic>>(costCategories, (value) => value.toMap());
    map['dimensions'] = Input.encodeList<GetCostCategoryRuleRuleDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    map['nots'] =
        Input.encodeList<GetCostCategoryRuleRuleNot, Map<String, dynamic>>(
            nots, (value) => value.toMap());
    map['ors'] =
        Input.encodeList<GetCostCategoryRuleRuleOr, Map<String, dynamic>>(
            ors, (value) => value.toMap());
    map['tags'] =
        Input.encodeList<GetCostCategoryRuleRuleTag, Map<String, dynamic>>(
            tags, (value) => value.toMap());
    return map;
  }

  factory GetCostCategoryRuleRule.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryRuleRule(
      ands: Input.decodeList<GetCostCategoryRuleRuleAnd>(
          map['ands'],
          (value) => GetCostCategoryRuleRuleAnd.fromMap(
              (value as Map).cast<String, dynamic>())),
      costCategories: Input.decodeList<GetCostCategoryRuleRuleCostCategory>(
          map['costCategories'],
          (value) => GetCostCategoryRuleRuleCostCategory.fromMap(
              (value as Map).cast<String, dynamic>())),
      dimensions: Input.decodeList<GetCostCategoryRuleRuleDimension>(
          map['dimensions'],
          (value) => GetCostCategoryRuleRuleDimension.fromMap(
              (value as Map).cast<String, dynamic>())),
      nots: Input.decodeList<GetCostCategoryRuleRuleNot>(
          map['nots'],
          (value) => GetCostCategoryRuleRuleNot.fromMap(
              (value as Map).cast<String, dynamic>())),
      ors: Input.decodeList<GetCostCategoryRuleRuleOr>(
          map['ors'],
          (value) => GetCostCategoryRuleRuleOr.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: Input.decodeList<GetCostCategoryRuleRuleTag>(
          map['tags'],
          (value) => GetCostCategoryRuleRuleTag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
