// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cost_category_rule_rule_or_and/cost_category_rule_rule_or_and.dart';
import '../cost_category_rule_rule_or_cost_category/cost_category_rule_rule_or_cost_category.dart';
import '../cost_category_rule_rule_or_dimension/cost_category_rule_rule_or_dimension.dart';
import '../cost_category_rule_rule_or_not/cost_category_rule_rule_or_not.dart';
import '../cost_category_rule_rule_or_or/cost_category_rule_rule_or_or.dart';
import '../cost_category_rule_rule_or_tags/cost_category_rule_rule_or_tags.dart';

class CostCategoryRuleRuleOr {
  /// Return results that match both `Dimension` objects.
  final List<CostCategoryRuleRuleOrAnd>? ands;

  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final CostCategoryRuleRuleOrCostCategory? costCategory;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final CostCategoryRuleRuleOrDimension? dimension;

  /// Return results that match both `Dimension` object.
  final CostCategoryRuleRuleOrNot? not;

  /// Return results that match both `Dimension` object.
  final List<CostCategoryRuleRuleOrOr>? ors;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final CostCategoryRuleRuleOrTags? tags;

  CostCategoryRuleRuleOr({
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
          Input.encodeList<CostCategoryRuleRuleOrAnd, Map<String, dynamic>>(
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
          Input.encodeList<CostCategoryRuleRuleOrOr, Map<String, dynamic>>(
              orsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue.toMap();
    }
    return map;
  }

  factory CostCategoryRuleRuleOr.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleOr(
      ands: map['ands'] == null
          ? null
          : Input.decodeList<CostCategoryRuleRuleOrAnd>(
              map['ands'],
              (value) => CostCategoryRuleRuleOrAnd.fromMap(
                  (value as Map).cast<String, dynamic>())),
      costCategory: map['costCategory'] == null
          ? null
          : CostCategoryRuleRuleOrCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null
          ? null
          : CostCategoryRuleRuleOrDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>()),
      not: map['not'] == null
          ? null
          : CostCategoryRuleRuleOrNot.fromMap(
              (map['not'] as Map).cast<String, dynamic>()),
      ors: map['ors'] == null
          ? null
          : Input.decodeList<CostCategoryRuleRuleOrOr>(
              map['ors'],
              (value) => CostCategoryRuleRuleOrOr.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : CostCategoryRuleRuleOrTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
