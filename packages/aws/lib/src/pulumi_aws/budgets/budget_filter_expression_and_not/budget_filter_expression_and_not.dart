// ignore_for_file: unused_element, unnecessary_cast

import '../budget_filter_expression_and_not_cost_categories/budget_filter_expression_and_not_cost_categories.dart';
import '../budget_filter_expression_and_not_dimensions/budget_filter_expression_and_not_dimensions.dart';
import '../budget_filter_expression_and_not_tags/budget_filter_expression_and_not_tags.dart';

class BudgetFilterExpressionAndNot {
  /// (Optional) A Cost Category Filter block.
  final BudgetFilterExpressionAndNotCostCategories? costCategories;

  /// (Optional) A Dimension Filter block.
  final BudgetFilterExpressionAndNotDimensions? dimensions;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final BudgetFilterExpressionAndNotTags? tags;

  BudgetFilterExpressionAndNot({
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

  factory BudgetFilterExpressionAndNot.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionAndNot(
      costCategories: map['costCategories'] == null
          ? null
          : BudgetFilterExpressionAndNotCostCategories.fromMap(
              (map['costCategories'] as Map).cast<String, dynamic>()),
      dimensions: map['dimensions'] == null
          ? null
          : BudgetFilterExpressionAndNotDimensions.fromMap(
              (map['dimensions'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : BudgetFilterExpressionAndNotTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
