// ignore_for_file: unused_element, unnecessary_cast

import 'budget_filter_expression_or_and_cost_categories.dart';
import 'budget_filter_expression_or_and_dimensions.dart';
import 'budget_filter_expression_or_and_tags.dart';

class BudgetFilterExpressionOrAnd {
  /// (Optional) A Cost Category Filter block.
  final BudgetFilterExpressionOrAndCostCategories? costCategories;
  /// (Optional) A Dimension Filter block.
  final BudgetFilterExpressionOrAndDimensions? dimensions;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final BudgetFilterExpressionOrAndTags? tags;

  /// Creates a new [BudgetFilterExpressionOrAnd].
  /// [costCategories] (Optional) A Cost Category Filter block.
  /// [dimensions] (Optional) A Dimension Filter block.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  BudgetFilterExpressionOrAnd({
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

  factory BudgetFilterExpressionOrAnd.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionOrAnd(
      costCategories: map['costCategories'] == null ? null : BudgetFilterExpressionOrAndCostCategories.fromMap((map['costCategories'] as Map).cast<String, dynamic>()),
      dimensions: map['dimensions'] == null ? null : BudgetFilterExpressionOrAndDimensions.fromMap((map['dimensions'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : BudgetFilterExpressionOrAndTags.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

