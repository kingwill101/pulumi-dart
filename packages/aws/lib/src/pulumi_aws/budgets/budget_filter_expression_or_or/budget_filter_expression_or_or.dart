// ignore_for_file: unused_element, unnecessary_cast

import '../budget_filter_expression_or_or_cost_categories/budget_filter_expression_or_or_cost_categories.dart';
import '../budget_filter_expression_or_or_dimensions/budget_filter_expression_or_or_dimensions.dart';
import '../budget_filter_expression_or_or_tags/budget_filter_expression_or_or_tags.dart';

class BudgetFilterExpressionOrOr {
  /// (Optional) A Cost Category Filter block.
  final BudgetFilterExpressionOrOrCostCategories? costCategories;

  /// (Optional) A Dimension Filter block.
  final BudgetFilterExpressionOrOrDimensions? dimensions;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final BudgetFilterExpressionOrOrTags? tags;

  BudgetFilterExpressionOrOr({
    this.costCategories,
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final costCategoriesValue = costCategories;
    if (costCategoriesValue != null) {
      map['costCategories'] = costCategoriesValue.toMap();
    }
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = dimensionsValue.toMap();
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue.toMap();
    }
    return map;
  }

  factory BudgetFilterExpressionOrOr.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionOrOr(
      costCategories: map['costCategories'] == null
          ? null
          : BudgetFilterExpressionOrOrCostCategories.fromMap(
              (map['costCategories'] as Map).cast<String, dynamic>()),
      dimensions: map['dimensions'] == null
          ? null
          : BudgetFilterExpressionOrOrDimensions.fromMap(
              (map['dimensions'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : BudgetFilterExpressionOrOrTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
