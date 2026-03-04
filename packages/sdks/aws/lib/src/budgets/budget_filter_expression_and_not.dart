// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_filter_expression_and_not_cost_categories.dart';
import 'budget_filter_expression_and_not_dimensions.dart';
import 'budget_filter_expression_and_not_tags.dart';

class BudgetFilterExpressionAndNot {
  /// (Optional) A Cost Category Filter block.
  final pulumi.Input<BudgetFilterExpressionAndNotCostCategories>?
  costCategories;

  /// (Optional) A Dimension Filter block.
  final pulumi.Input<BudgetFilterExpressionAndNotDimensions>? dimensions;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<BudgetFilterExpressionAndNotTags>? tags;

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
      'costCategories':
          ?pulumi.Input.mapOptionalInputValue<
            BudgetFilterExpressionAndNotCostCategories,
            Map<String, dynamic>
          >(costCategories, (value) => value.toMap()),
      'dimensions':
          ?pulumi.Input.mapOptionalInputValue<
            BudgetFilterExpressionAndNotDimensions,
            Map<String, dynamic>
          >(dimensions, (value) => value.toMap()),
      'tags':
          ?pulumi.Input.mapOptionalInputValue<
            BudgetFilterExpressionAndNotTags,
            Map<String, dynamic>
          >(tags, (value) => value.toMap()),
    };
  }

  factory BudgetFilterExpressionAndNot.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionAndNot(
      costCategories: (() {
        final guardedValue = map['costCategories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BudgetFilterExpressionAndNotCostCategories.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dimensions: (() {
        final guardedValue = map['dimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BudgetFilterExpressionAndNotDimensions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BudgetFilterExpressionAndNotTags.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
