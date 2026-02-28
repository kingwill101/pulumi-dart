// ignore_for_file: unused_element, unnecessary_cast

import 'cost_category_rule_rule_not_not_cost_category.dart';
import 'cost_category_rule_rule_not_not_dimension.dart';
import 'cost_category_rule_rule_not_not_tags.dart';

class CostCategoryRuleRuleNotNot {
  /// Configuration block for the filter that's based on `CostCategory` values. See below.
  final CostCategoryRuleRuleNotNotCostCategory? costCategory;

  /// Configuration block for the specific `Dimension` to use for `Expression`. See below.
  final CostCategoryRuleRuleNotNotDimension? dimension;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final CostCategoryRuleRuleNotNotTags? tags;

  /// Creates a new [CostCategoryRuleRuleNotNot].
  /// [costCategory] Configuration block for the filter that's based on `CostCategory` values. See below.
  /// [dimension] Configuration block for the specific `Dimension` to use for `Expression`. See below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CostCategoryRuleRuleNotNot({
    this.costCategory,
    this.dimension,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final costCategoryValue = costCategory;
    if (costCategoryValue != null) {
      map['costCategory'] = costCategoryValue.toMap();
    }
    final dimensionValue = dimension;
    if (dimensionValue != null) {
      map['dimension'] = dimensionValue.toMap();
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue.toMap();
    }
    return map;
  }

  factory CostCategoryRuleRuleNotNot.fromMap(Map<String, dynamic> map) {
    return CostCategoryRuleRuleNotNot(
      costCategory: map['costCategory'] == null
          ? null
          : CostCategoryRuleRuleNotNotCostCategory.fromMap(
              (map['costCategory'] as Map).cast<String, dynamic>()),
      dimension: map['dimension'] == null
          ? null
          : CostCategoryRuleRuleNotNotDimension.fromMap(
              (map['dimension'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : CostCategoryRuleRuleNotNotTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
