// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_filter_expression_not_and.dart';
import 'budget_filter_expression_not_cost_categories.dart';
import 'budget_filter_expression_not_dimensions.dart';
import 'budget_filter_expression_not_not.dart';
import 'budget_filter_expression_not_or.dart';
import 'budget_filter_expression_not_tags.dart';

class BudgetFilterExpressionNot {
  /// (Optional) A list of filter expressions to combine with AND logic. Each `and` block is one operand and must itself contain exactly one root.
  final pulumi.Input<List<BudgetFilterExpressionNotAnd>>? ands;
  /// (Optional) A Cost Category Filter block.
  final pulumi.Input<BudgetFilterExpressionNotCostCategories>? costCategories;
  /// (Optional) A Dimension Filter block.
  final pulumi.Input<BudgetFilterExpressionNotDimensions>? dimensions;
  /// (Optional) A single filter expression to negate. Must contain exactly one root.
  final pulumi.Input<BudgetFilterExpressionNotNot>? not;
  /// (Optional) A list of filter expressions to combine with OR logic. Each `or` block is one operand and must itself contain exactly one root.
  final pulumi.Input<List<BudgetFilterExpressionNotOr>>? ors;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<BudgetFilterExpressionNotTags>? tags;

  /// Creates a new [BudgetFilterExpressionNot].
  /// [ands] (Optional) A list of filter expressions to combine with AND logic. Each `and` block is one operand and must itself contain exactly one root.
  /// [costCategories] (Optional) A Cost Category Filter block.
  /// [dimensions] (Optional) A Dimension Filter block.
  /// [not] (Optional) A single filter expression to negate. Must contain exactly one root.
  /// [ors] (Optional) A list of filter expressions to combine with OR logic. Each `or` block is one operand and must itself contain exactly one root.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  BudgetFilterExpressionNot({
    this.ands,
    this.costCategories,
    this.dimensions,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?pulumi.Input.mapOptionalInputValue<List<BudgetFilterExpressionNotAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<BudgetFilterExpressionNotAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'costCategories': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionNotCostCategories, Map<String, dynamic>>(costCategories, (value) => value.toMap()),
      'dimensions': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionNotDimensions, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'not': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionNotNot, Map<String, dynamic>>(not, (value) => value.toMap()),
      'ors': ?pulumi.Input.mapOptionalInputValue<List<BudgetFilterExpressionNotOr>, List<Map<String, dynamic>>>(ors, (value) => pulumi.Input.encodeList<BudgetFilterExpressionNotOr, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionNotTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory BudgetFilterExpressionNot.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionNot(
      ands: map['ands'] == null ? null : (pulumi.Input.decodeList<BudgetFilterExpressionNotAnd>(map['ands'], (value) => BudgetFilterExpressionNotAnd.fromMap((value as Map).cast<String, dynamic>()))).input(),
      costCategories: map['costCategories'] == null ? null : (BudgetFilterExpressionNotCostCategories.fromMap((map['costCategories'] as Map).cast<String, dynamic>())).input(),
      dimensions: map['dimensions'] == null ? null : (BudgetFilterExpressionNotDimensions.fromMap((map['dimensions'] as Map).cast<String, dynamic>())).input(),
      not: map['not'] == null ? null : (BudgetFilterExpressionNotNot.fromMap((map['not'] as Map).cast<String, dynamic>())).input(),
      ors: map['ors'] == null ? null : (pulumi.Input.decodeList<BudgetFilterExpressionNotOr>(map['ors'], (value) => BudgetFilterExpressionNotOr.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : (BudgetFilterExpressionNotTags.fromMap((map['tags'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

