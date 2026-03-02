// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_filter_expression_not_not_cost_categories.dart';
import 'budget_filter_expression_not_not_dimensions.dart';
import 'budget_filter_expression_not_not_tags.dart';

class BudgetFilterExpressionNotNot {
  /// (Optional) A Cost Category Filter block.
  final pulumi.Input<BudgetFilterExpressionNotNotCostCategories>? costCategories;
  /// (Optional) A Dimension Filter block.
  final pulumi.Input<BudgetFilterExpressionNotNotDimensions>? dimensions;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<BudgetFilterExpressionNotNotTags>? tags;

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
      'costCategories': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionNotNotCostCategories, Map<String, dynamic>>(costCategories, (value) => value.toMap()),
      'dimensions': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionNotNotDimensions, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionNotNotTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory BudgetFilterExpressionNotNot.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionNotNot(
      costCategories: map['costCategories'] == null ? null : ((BudgetFilterExpressionNotNotCostCategories.fromMap((map['costCategories']! as Map).cast<String, dynamic>())).input()).input(),
      dimensions: map['dimensions'] == null ? null : ((BudgetFilterExpressionNotNotDimensions.fromMap((map['dimensions']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : ((BudgetFilterExpressionNotNotTags.fromMap((map['tags']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

