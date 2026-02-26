// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cost_category_rule_rule_and/cost_category_rule_rule_and.dart';
import '../cost_category_rule_rule_cost_category/cost_category_rule_rule_cost_category.dart';
import '../cost_category_rule_rule_dimension/cost_category_rule_rule_dimension.dart';
import '../cost_category_rule_rule_not/cost_category_rule_rule_not.dart';
import '../cost_category_rule_rule_or/cost_category_rule_rule_or.dart';
import '../cost_category_rule_rule_tags/cost_category_rule_rule_tags.dart';

class CostCategoryRuleRule {
  /// Return results that match both `Dimension` objects.
  final List<CostCategoryRuleRuleAnd>? ands;

  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final CostCategoryRuleRuleCostCategory? costCategory;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final CostCategoryRuleRuleDimension? dimension;

  /// Return results that match both `Dimension` object.
  final CostCategoryRuleRuleNot? not;

  /// Return results that match both `Dimension` object.
  final List<CostCategoryRuleRuleOr>? ors;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final CostCategoryRuleRuleTags? tags;

  CostCategoryRuleRule({
    this.ands,
    this.costCategory,
    this.dimension,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final andsValue = ands;
    if (andsValue != null) {
      map['ands'] =
          Input.encodeList<CostCategoryRuleRuleAnd, Map<String, dynamic>>(
              andsValue, (value) => value.toMap());
    }
    final costCategoryValue = costCategory;
    if (costCategoryValue != null) {
      map['costCategory'] = costCategoryValue.toMap();
    }
    final dimensionValue = dimension;
    if (dimensionValue != null) {
      map['dimension'] = dimensionValue.toMap();
    }
    final notValue = not;
    if (notValue != null) {
      map['not'] = notValue.toMap();
    }
    final orsValue = ors;
    if (orsValue != null) {
      map['ors'] =
          Input.encodeList<CostCategoryRuleRuleOr, Map<String, dynamic>>(
              orsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue.toMap();
    }
    return map;
  }

  factory CostCategoryRuleRule.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRule(
      ands: map['ands'] == null
          ? null
          : Input.decodeList<CostCategoryRuleRuleAnd>(
              map['ands'],
              (value) => CostCategoryRuleRuleAnd.fromMap(
                  (value as Map).cast<String, dynamic>())),
      costCategory: map['costCategory'] == null
          ? null
          : CostCategoryRuleRuleCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null
          ? null
          : CostCategoryRuleRuleDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>()),
      not: map['not'] == null
          ? null
          : CostCategoryRuleRuleNot.fromMap(
              (map['not'] as Map).cast<String, dynamic>()),
      ors: map['ors'] == null
          ? null
          : Input.decodeList<CostCategoryRuleRuleOr>(
              map['ors'],
              (value) => CostCategoryRuleRuleOr.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : CostCategoryRuleRuleTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
