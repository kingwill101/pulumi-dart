// ignore_for_file: unused_element, unnecessary_cast

import 'budget_filter_expression_and_not_cost_categories.dart';
import 'budget_filter_expression_and_not_dimensions.dart';
import 'budget_filter_expression_and_not_tags.dart';

class BudgetFilterExpressionAndNot {
  /// (Optional) A Cost Category Filter block.
  final BudgetFilterExpressionAndNotCostCategories? costCategories;
  /// (Optional) A Dimension Filter block.
  final BudgetFilterExpressionAndNotDimensions? dimensions;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final BudgetFilterExpressionAndNotTags? tags;

  /// Creates a new [BudgetFilterExpressionAndNot].
  /// [costCategories] (Optional) A Cost Category Filter block.
  /// [dimensions] (Optional) A Dimension Filter block.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  BudgetFilterExpressionAndNot({
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

  factory BudgetFilterExpressionAndNot.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionAndNot(
      costCategories: map['costCategories'] == null ? null : BudgetFilterExpressionAndNotCostCategories.fromMap((map['costCategories'] as Map).cast<String, dynamic>()),
      dimensions: map['dimensions'] == null ? null : BudgetFilterExpressionAndNotDimensions.fromMap((map['dimensions'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : BudgetFilterExpressionAndNotTags.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

