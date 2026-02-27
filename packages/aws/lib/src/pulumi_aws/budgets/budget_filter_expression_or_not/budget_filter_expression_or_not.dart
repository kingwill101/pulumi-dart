// ignore_for_file: unused_element, unnecessary_cast

import '../budget_filter_expression_or_not_cost_categories/budget_filter_expression_or_not_cost_categories.dart';
import '../budget_filter_expression_or_not_dimensions/budget_filter_expression_or_not_dimensions.dart';
import '../budget_filter_expression_or_not_tags/budget_filter_expression_or_not_tags.dart';

class BudgetFilterExpressionOrNot {
  /// (Optional) A Cost Category Filter block.
  final BudgetFilterExpressionOrNotCostCategories? costCategories;

  /// (Optional) A Dimension Filter block.
  final BudgetFilterExpressionOrNotDimensions? dimensions;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final BudgetFilterExpressionOrNotTags? tags;

  BudgetFilterExpressionOrNot({
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

  factory BudgetFilterExpressionOrNot.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionOrNot(
      costCategories: map['costCategories'] == null
          ? null
          : BudgetFilterExpressionOrNotCostCategories.fromMap(
              (map['costCategories'] as Map).cast<String, dynamic>()),
      dimensions: map['dimensions'] == null
          ? null
          : BudgetFilterExpressionOrNotDimensions.fromMap(
              (map['dimensions'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : BudgetFilterExpressionOrNotTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
