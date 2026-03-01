// ignore_for_file: unused_element, unnecessary_cast

import 'budget_filter_expression_and_and_cost_categories.dart';
import 'budget_filter_expression_and_and_dimensions.dart';
import 'budget_filter_expression_and_and_tags.dart';

class BudgetFilterExpressionAndAnd {
  /// (Optional) A Cost Category Filter block.
  final BudgetFilterExpressionAndAndCostCategories? costCategories;
  /// (Optional) A Dimension Filter block.
  final BudgetFilterExpressionAndAndDimensions? dimensions;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final BudgetFilterExpressionAndAndTags? tags;

  /// Creates a new [BudgetFilterExpressionAndAnd].
  /// [costCategories] (Optional) A Cost Category Filter block.
  /// [dimensions] (Optional) A Dimension Filter block.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  BudgetFilterExpressionAndAnd({
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

  factory BudgetFilterExpressionAndAnd.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionAndAnd(
      costCategories: map['costCategories'] == null ? null : BudgetFilterExpressionAndAndCostCategories.fromMap((map['costCategories'] as Map).cast<String, dynamic>()),
      dimensions: map['dimensions'] == null ? null : BudgetFilterExpressionAndAndDimensions.fromMap((map['dimensions'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : BudgetFilterExpressionAndAndTags.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

