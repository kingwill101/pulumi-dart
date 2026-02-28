// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_filter_expression_and.dart';
import 'budget_filter_expression_cost_categories.dart';
import 'budget_filter_expression_dimensions.dart';
import 'budget_filter_expression_not.dart';
import 'budget_filter_expression_or.dart';
import 'budget_filter_expression_tags.dart';

class BudgetFilterExpression {
  /// (Optional) A list of filter expressions to combine with AND logic. Each `and` block is one operand and must itself contain exactly one root.
  final List<BudgetFilterExpressionAnd>? ands;

  /// (Optional) A Cost Category Filter block.
  final BudgetFilterExpressionCostCategories? costCategories;

  /// (Optional) A Dimension Filter block.
  final BudgetFilterExpressionDimensions? dimensions;

  /// (Optional) A single filter expression to negate. Must contain exactly one root.
  final BudgetFilterExpressionNot? not;

  /// (Optional) A list of filter expressions to combine with OR logic. Each `or` block is one operand and must itself contain exactly one root.
  final List<BudgetFilterExpressionOr>? ors;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final BudgetFilterExpressionTags? tags;

  /// Creates a new [BudgetFilterExpression].
  /// [ands] (Optional) A list of filter expressions to combine with AND logic. Each `and` block is one operand and must itself contain exactly one root.
  /// [costCategories] (Optional) A Cost Category Filter block.
  /// [dimensions] (Optional) A Dimension Filter block.
  /// [not] (Optional) A single filter expression to negate. Must contain exactly one root.
  /// [ors] (Optional) A list of filter expressions to combine with OR logic. Each `or` block is one operand and must itself contain exactly one root.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  BudgetFilterExpression({
    this.ands,
    this.costCategories,
    this.dimensions,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final andsValue = ands;
    if (andsValue != null) {
      map['ands'] = pulumi.Input.encodeList<BudgetFilterExpressionAnd,
          Map<String, dynamic>>(andsValue, (value) => value.toMap());
    }
    final costCategoriesValue = costCategories;
    if (costCategoriesValue != null) {
      map['costCategories'] = costCategoriesValue.toMap();
    }
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = dimensionsValue.toMap();
    }
    final notValue = not;
    if (notValue != null) {
      map['not'] = notValue.toMap();
    }
    final orsValue = ors;
    if (orsValue != null) {
      map['ors'] = pulumi.Input.encodeList<BudgetFilterExpressionOr,
          Map<String, dynamic>>(orsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue.toMap();
    }
    return map;
  }

  factory BudgetFilterExpression.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpression(
      ands: map['ands'] == null
          ? null
          : pulumi.Input.decodeList<BudgetFilterExpressionAnd>(
              map['ands'],
              (value) => BudgetFilterExpressionAnd.fromMap(
                  (value as Map).cast<String, dynamic>())),
      costCategories: map['costCategories'] == null
          ? null
          : BudgetFilterExpressionCostCategories.fromMap(
              (map['costCategories'] as Map).cast<String, dynamic>()),
      dimensions: map['dimensions'] == null
          ? null
          : BudgetFilterExpressionDimensions.fromMap(
              (map['dimensions'] as Map).cast<String, dynamic>()),
      not: map['not'] == null
          ? null
          : BudgetFilterExpressionNot.fromMap(
              (map['not'] as Map).cast<String, dynamic>()),
      ors: map['ors'] == null
          ? null
          : pulumi.Input.decodeList<BudgetFilterExpressionOr>(
              map['ors'],
              (value) => BudgetFilterExpressionOr.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : BudgetFilterExpressionTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
