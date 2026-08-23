// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_filter_expression_not_and_cost_categories.dart';
import 'budget_filter_expression_not_and_dimensions.dart';
import 'budget_filter_expression_not_and_tags.dart';

class BudgetFilterExpressionNotAnd {
  /// (Optional) A Cost Category Filter block.
  final pulumi.Input<BudgetFilterExpressionNotAndCostCategories>? costCategories;
  /// (Optional) A Dimension Filter block.
  final pulumi.Input<BudgetFilterExpressionNotAndDimensions>? dimensions;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<BudgetFilterExpressionNotAndTags>? tags;

  /// Creates a new [BudgetFilterExpressionNotAnd].
  /// [costCategories] (Optional) A Cost Category Filter block.
  /// [dimensions] (Optional) A Dimension Filter block.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const BudgetFilterExpressionNotAnd({
    this.costCategories,
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategories': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionNotAndCostCategories, Map<String, dynamic>>(costCategories, (value) => value.toMap()),
      'dimensions': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionNotAndDimensions, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionNotAndTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory BudgetFilterExpressionNotAnd.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionNotAnd(
      costCategories: (() { final guardedValue = map['costCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetFilterExpressionNotAndCostCategories.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetFilterExpressionNotAndDimensions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetFilterExpressionNotAndTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
