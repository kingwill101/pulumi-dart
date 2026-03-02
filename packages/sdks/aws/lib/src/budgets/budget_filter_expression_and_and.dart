// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_filter_expression_and_and_cost_categories.dart';
import 'budget_filter_expression_and_and_dimensions.dart';
import 'budget_filter_expression_and_and_tags.dart';

class BudgetFilterExpressionAndAnd {
  /// (Optional) A Cost Category Filter block.
  final pulumi.Input<BudgetFilterExpressionAndAndCostCategories>? costCategories;
  /// (Optional) A Dimension Filter block.
  final pulumi.Input<BudgetFilterExpressionAndAndDimensions>? dimensions;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<BudgetFilterExpressionAndAndTags>? tags;

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
      'costCategories': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionAndAndCostCategories, Map<String, dynamic>>(costCategories, (value) => value.toMap()),
      'dimensions': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionAndAndDimensions, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionAndAndTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory BudgetFilterExpressionAndAnd.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionAndAnd(
      costCategories: map['costCategories'] == null ? null : (BudgetFilterExpressionAndAndCostCategories.fromMap((map['costCategories'] as Map).cast<String, dynamic>())).input(),
      dimensions: map['dimensions'] == null ? null : (BudgetFilterExpressionAndAndDimensions.fromMap((map['dimensions'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : (BudgetFilterExpressionAndAndTags.fromMap((map['tags'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

