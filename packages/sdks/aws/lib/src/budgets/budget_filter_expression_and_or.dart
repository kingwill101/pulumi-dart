// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_filter_expression_and_or_cost_categories.dart';
import 'budget_filter_expression_and_or_dimensions.dart';
import 'budget_filter_expression_and_or_tags.dart';

class BudgetFilterExpressionAndOr {
  /// (Optional) A Cost Category Filter block.
  final pulumi.Input<BudgetFilterExpressionAndOrCostCategories>? costCategories;

  /// (Optional) A Dimension Filter block.
  final pulumi.Input<BudgetFilterExpressionAndOrDimensions>? dimensions;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<BudgetFilterExpressionAndOrTags>? tags;

  /// Creates a new [BudgetFilterExpressionAndOr].
  /// [costCategories] (Optional) A Cost Category Filter block.
  /// [dimensions] (Optional) A Dimension Filter block.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  BudgetFilterExpressionAndOr({
    this.costCategories,
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategories':
          ?pulumi.Input.mapOptionalInputValue<
            BudgetFilterExpressionAndOrCostCategories,
            Map<String, dynamic>
          >(costCategories, (value) => value.toMap()),
      'dimensions':
          ?pulumi.Input.mapOptionalInputValue<
            BudgetFilterExpressionAndOrDimensions,
            Map<String, dynamic>
          >(dimensions, (value) => value.toMap()),
      'tags':
          ?pulumi.Input.mapOptionalInputValue<
            BudgetFilterExpressionAndOrTags,
            Map<String, dynamic>
          >(tags, (value) => value.toMap()),
    };
  }

  factory BudgetFilterExpressionAndOr.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionAndOr(
      costCategories: (() {
        final guardedValue = map['costCategories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BudgetFilterExpressionAndOrCostCategories.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dimensions: (() {
        final guardedValue = map['dimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BudgetFilterExpressionAndOrDimensions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BudgetFilterExpressionAndOrTags.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
