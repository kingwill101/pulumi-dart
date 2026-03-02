// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_filter_expression_or_or_cost_categories.dart';
import 'budget_filter_expression_or_or_dimensions.dart';
import 'budget_filter_expression_or_or_tags.dart';

class BudgetFilterExpressionOrOr {
  /// (Optional) A Cost Category Filter block.
  final pulumi.Input<BudgetFilterExpressionOrOrCostCategories>? costCategories;
  /// (Optional) A Dimension Filter block.
  final pulumi.Input<BudgetFilterExpressionOrOrDimensions>? dimensions;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<BudgetFilterExpressionOrOrTags>? tags;

  /// Creates a new [BudgetFilterExpressionOrOr].
  /// [costCategories] (Optional) A Cost Category Filter block.
  /// [dimensions] (Optional) A Dimension Filter block.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  BudgetFilterExpressionOrOr({
    this.costCategories,
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategories': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionOrOrCostCategories, Map<String, dynamic>>(costCategories, (value) => value.toMap()),
      'dimensions': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionOrOrDimensions, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionOrOrTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory BudgetFilterExpressionOrOr.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionOrOr(
      costCategories: map['costCategories'] == null ? null : ((BudgetFilterExpressionOrOrCostCategories.fromMap((map['costCategories']! as Map).cast<String, dynamic>())).input()).input(),
      dimensions: map['dimensions'] == null ? null : ((BudgetFilterExpressionOrOrDimensions.fromMap((map['dimensions']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : ((BudgetFilterExpressionOrOrTags.fromMap((map['tags']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

