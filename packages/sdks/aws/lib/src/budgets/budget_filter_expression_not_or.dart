// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_filter_expression_not_or_cost_categories.dart';
import 'budget_filter_expression_not_or_dimensions.dart';
import 'budget_filter_expression_not_or_tags.dart';

class BudgetFilterExpressionNotOr {
  /// (Optional) A Cost Category Filter block.
  final pulumi.Input<BudgetFilterExpressionNotOrCostCategories>? costCategories;
  /// (Optional) A Dimension Filter block.
  final pulumi.Input<BudgetFilterExpressionNotOrDimensions>? dimensions;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<BudgetFilterExpressionNotOrTags>? tags;

  /// Creates a new [BudgetFilterExpressionNotOr].
  /// [costCategories] (Optional) A Cost Category Filter block.
  /// [dimensions] (Optional) A Dimension Filter block.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const BudgetFilterExpressionNotOr({
    this.costCategories,
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategories': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionNotOrCostCategories, Map<String, dynamic>>(costCategories, (value) => value.toMap()),
      'dimensions': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionNotOrDimensions, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionNotOrTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory BudgetFilterExpressionNotOr.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionNotOr(
      costCategories: (() { final guardedValue = map['costCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetFilterExpressionNotOrCostCategories.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetFilterExpressionNotOrDimensions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetFilterExpressionNotOrTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
