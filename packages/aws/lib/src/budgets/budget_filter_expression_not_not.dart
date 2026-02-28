// ignore_for_file: unused_element, unnecessary_cast

import 'budget_filter_expression_not_not_cost_categories.dart';
import 'budget_filter_expression_not_not_dimensions.dart';
import 'budget_filter_expression_not_not_tags.dart';

class BudgetFilterExpressionNotNot {
  /// (Optional) A Cost Category Filter block.
  final BudgetFilterExpressionNotNotCostCategories? costCategories;
  /// (Optional) A Dimension Filter block.
  final BudgetFilterExpressionNotNotDimensions? dimensions;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final BudgetFilterExpressionNotNotTags? tags;

  /// Creates a new [BudgetFilterExpressionNotNot].
  /// [costCategories] (Optional) A Cost Category Filter block.
  /// [dimensions] (Optional) A Dimension Filter block.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  BudgetFilterExpressionNotNot({
    this.costCategories,
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategories': ?costCategories == null ? null : costCategories!.toMap(),
      'dimensions': ?dimensions == null ? null : dimensions!.toMap(),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory BudgetFilterExpressionNotNot.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionNotNot(
      costCategories: map['costCategories'] == null ? null : BudgetFilterExpressionNotNotCostCategories.fromMap((map['costCategories'] as Map).cast<String, dynamic>()),
      dimensions: map['dimensions'] == null ? null : BudgetFilterExpressionNotNotDimensions.fromMap((map['dimensions'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : BudgetFilterExpressionNotNotTags.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

