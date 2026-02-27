// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cost_category_rule_rule_not_and/cost_category_rule_rule_not_and.dart';
import '../cost_category_rule_rule_not_cost_category/cost_category_rule_rule_not_cost_category.dart';
import '../cost_category_rule_rule_not_dimension/cost_category_rule_rule_not_dimension.dart';
import '../cost_category_rule_rule_not_not/cost_category_rule_rule_not_not.dart';
import '../cost_category_rule_rule_not_or/cost_category_rule_rule_not_or.dart';
import '../cost_category_rule_rule_not_tags/cost_category_rule_rule_not_tags.dart';

class CostCategoryRuleRuleNot {
  /// Return results that match both `Dimension` objects.
  final List<CostCategoryRuleRuleNotAnd>? ands;

  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final CostCategoryRuleRuleNotCostCategory? costCategory;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final CostCategoryRuleRuleNotDimension? dimension;

  /// Return results that match both `Dimension` object.
  final CostCategoryRuleRuleNotNot? not;

  /// Return results that match both `Dimension` object.
  final List<CostCategoryRuleRuleNotOr>? ors;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final CostCategoryRuleRuleNotTags? tags;

  CostCategoryRuleRuleNot({
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
      map['ands'] = pulumi.Input.encodeList<CostCategoryRuleRuleNotAnd,
          Map<String, dynamic>>(andsValue, (value) => value.toMap());
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
      map['ors'] = pulumi.Input.encodeList<CostCategoryRuleRuleNotOr,
          Map<String, dynamic>>(orsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue.toMap();
    }
    return map;
  }

  factory CostCategoryRuleRuleNot.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleNot(
      ands: map['ands'] == null
          ? null
          : pulumi.Input.decodeList<CostCategoryRuleRuleNotAnd>(
              map['ands'],
              (value) => CostCategoryRuleRuleNotAnd.fromMap(
                  (value as Map).cast<String, dynamic>())),
      costCategory: map['costCategory'] == null
          ? null
          : CostCategoryRuleRuleNotCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null
          ? null
          : CostCategoryRuleRuleNotDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>()),
      not: map['not'] == null
          ? null
          : CostCategoryRuleRuleNotNot.fromMap(
              (map['not'] as Map).cast<String, dynamic>()),
      ors: map['ors'] == null
          ? null
          : pulumi.Input.decodeList<CostCategoryRuleRuleNotOr>(
              map['ors'],
              (value) => CostCategoryRuleRuleNotOr.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : CostCategoryRuleRuleNotTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
