// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../budget_filter_expression_not_and/budget_filter_expression_not_and.dart';
import '../budget_filter_expression_not_cost_categories/budget_filter_expression_not_cost_categories.dart';
import '../budget_filter_expression_not_dimensions/budget_filter_expression_not_dimensions.dart';
import '../budget_filter_expression_not_not/budget_filter_expression_not_not.dart';
import '../budget_filter_expression_not_or/budget_filter_expression_not_or.dart';
import '../budget_filter_expression_not_tags/budget_filter_expression_not_tags.dart';

class BudgetFilterExpressionNot {
  /// (Optional) A list of filter expressions to combine with AND logic. Each `and` block is one operand and must itself contain exactly one root.
  final List<BudgetFilterExpressionNotAnd>? ands;

  /// (Optional) A Cost Category Filter block.
  final BudgetFilterExpressionNotCostCategories? costCategories;

  /// (Optional) A Dimension Filter block.
  final BudgetFilterExpressionNotDimensions? dimensions;

  /// (Optional) A single filter expression to negate. Must contain exactly one root.
  final BudgetFilterExpressionNotNot? not;

  /// (Optional) A list of filter expressions to combine with OR logic. Each `or` block is one operand and must itself contain exactly one root.
  final List<BudgetFilterExpressionNotOr>? ors;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final BudgetFilterExpressionNotTags? tags;

  BudgetFilterExpressionNot({
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
      map['ands'] = pulumi.Input.encodeList<BudgetFilterExpressionNotAnd,
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
      map['ors'] = pulumi.Input.encodeList<BudgetFilterExpressionNotOr,
          Map<String, dynamic>>(orsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue.toMap();
    }
    return map;
  }

  factory BudgetFilterExpressionNot.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionNot(
      ands: map['ands'] == null
          ? null
          : pulumi.Input.decodeList<BudgetFilterExpressionNotAnd>(
              map['ands'],
              (value) => BudgetFilterExpressionNotAnd.fromMap(
                  (value as Map).cast<String, dynamic>())),
      costCategories: map['costCategories'] == null
          ? null
          : BudgetFilterExpressionNotCostCategories.fromMap(
              (map['costCategories'] as Map).cast<String, dynamic>()),
      dimensions: map['dimensions'] == null
          ? null
          : BudgetFilterExpressionNotDimensions.fromMap(
              (map['dimensions'] as Map).cast<String, dynamic>()),
      not: map['not'] == null
          ? null
          : BudgetFilterExpressionNotNot.fromMap(
              (map['not'] as Map).cast<String, dynamic>()),
      ors: map['ors'] == null
          ? null
          : pulumi.Input.decodeList<BudgetFilterExpressionNotOr>(
              map['ors'],
              (value) => BudgetFilterExpressionNotOr.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : BudgetFilterExpressionNotTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}
