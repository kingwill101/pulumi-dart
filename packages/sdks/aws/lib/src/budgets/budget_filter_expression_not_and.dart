// ignore_for_file: unused_element, unnecessary_cast

import 'budget_filter_expression_not_and_cost_categories.dart';
import 'budget_filter_expression_not_and_dimensions.dart';
import 'budget_filter_expression_not_and_tags.dart';

class BudgetFilterExpressionNotAnd {
  /// (Optional) A Cost Category Filter block.
  final BudgetFilterExpressionNotAndCostCategories? costCategories;
  /// (Optional) A Dimension Filter block.
  final BudgetFilterExpressionNotAndDimensions? dimensions;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final BudgetFilterExpressionNotAndTags? tags;

  /// Creates a new [BudgetFilterExpressionNotAnd].
  /// [costCategories] (Optional) A Cost Category Filter block.
  /// [dimensions] (Optional) A Dimension Filter block.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  BudgetFilterExpressionNotAnd({
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

  factory BudgetFilterExpressionNotAnd.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionNotAnd(
      costCategories: map['costCategories'] == null ? null : BudgetFilterExpressionNotAndCostCategories.fromMap((map['costCategories'] as Map).cast<String, dynamic>()),
      dimensions: map['dimensions'] == null ? null : BudgetFilterExpressionNotAndDimensions.fromMap((map['dimensions'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : BudgetFilterExpressionNotAndTags.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

