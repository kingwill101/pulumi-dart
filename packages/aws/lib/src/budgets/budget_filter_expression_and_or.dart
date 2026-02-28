// ignore_for_file: unused_element, unnecessary_cast

import 'budget_filter_expression_and_or_cost_categories.dart';
import 'budget_filter_expression_and_or_dimensions.dart';
import 'budget_filter_expression_and_or_tags.dart';

class BudgetFilterExpressionAndOr {
  /// (Optional) A Cost Category Filter block.
  final BudgetFilterExpressionAndOrCostCategories? costCategories;

  /// (Optional) A Dimension Filter block.
  final BudgetFilterExpressionAndOrDimensions? dimensions;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final BudgetFilterExpressionAndOrTags? tags;

  /// Creates a new [BudgetFilterExpressionAndOr].
  /// [costCategories] (Optional) A Cost Category Filter block.
  /// [dimensions] (Optional) A Dimension Filter block.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  BudgetFilterExpressionAndOr({
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

  factory BudgetFilterExpressionAndOr.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionAndOr(
      costCategories: map['costCategories'] == null
          ? null
          : BudgetFilterExpressionAndOrCostCategories.fromMap(
              (map['costCategories'] as Map).cast<String, dynamic>()),
      dimensions: map['dimensions'] == null
          ? null
          : BudgetFilterExpressionAndOrDimensions.fromMap(
              (map['dimensions'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : BudgetFilterExpressionAndOrTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
