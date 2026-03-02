// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_filter_expression_or_and.dart';
import 'budget_filter_expression_or_cost_categories.dart';
import 'budget_filter_expression_or_dimensions.dart';
import 'budget_filter_expression_or_not.dart';
import 'budget_filter_expression_or_or.dart';
import 'budget_filter_expression_or_tags.dart';

class BudgetFilterExpressionOr {
  /// (Optional) A list of filter expressions to combine with AND logic. Each `and` block is one operand and must itself contain exactly one root.
  final pulumi.Input<List<BudgetFilterExpressionOrAnd>>? ands;
  /// (Optional) A Cost Category Filter block.
  final pulumi.Input<BudgetFilterExpressionOrCostCategories>? costCategories;
  /// (Optional) A Dimension Filter block.
  final pulumi.Input<BudgetFilterExpressionOrDimensions>? dimensions;
  /// (Optional) A single filter expression to negate. Must contain exactly one root.
  final pulumi.Input<BudgetFilterExpressionOrNot>? not;
  /// (Optional) A list of filter expressions to combine with OR logic. Each `or` block is one operand and must itself contain exactly one root.
  final pulumi.Input<List<BudgetFilterExpressionOrOr>>? ors;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<BudgetFilterExpressionOrTags>? tags;

  /// Creates a new [BudgetFilterExpressionOr].
  /// [ands] (Optional) A list of filter expressions to combine with AND logic. Each `and` block is one operand and must itself contain exactly one root.
  /// [costCategories] (Optional) A Cost Category Filter block.
  /// [dimensions] (Optional) A Dimension Filter block.
  /// [not] (Optional) A single filter expression to negate. Must contain exactly one root.
  /// [ors] (Optional) A list of filter expressions to combine with OR logic. Each `or` block is one operand and must itself contain exactly one root.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  BudgetFilterExpressionOr({
    this.ands,
    this.costCategories,
    this.dimensions,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?pulumi.Input.mapOptionalInputValue<List<BudgetFilterExpressionOrAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<BudgetFilterExpressionOrAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'costCategories': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionOrCostCategories, Map<String, dynamic>>(costCategories, (value) => value.toMap()),
      'dimensions': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionOrDimensions, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'not': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionOrNot, Map<String, dynamic>>(not, (value) => value.toMap()),
      'ors': ?pulumi.Input.mapOptionalInputValue<List<BudgetFilterExpressionOrOr>, List<Map<String, dynamic>>>(ors, (value) => pulumi.Input.encodeList<BudgetFilterExpressionOrOr, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionOrTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory BudgetFilterExpressionOr.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionOr(
      ands: map['ands'] == null ? null : (pulumi.Input.decodeList<BudgetFilterExpressionOrAnd>(map['ands'], (value) => BudgetFilterExpressionOrAnd.fromMap((value as Map).cast<String, dynamic>()))).input(),
      costCategories: map['costCategories'] == null ? null : (BudgetFilterExpressionOrCostCategories.fromMap((map['costCategories'] as Map).cast<String, dynamic>())).input(),
      dimensions: map['dimensions'] == null ? null : (BudgetFilterExpressionOrDimensions.fromMap((map['dimensions'] as Map).cast<String, dynamic>())).input(),
      not: map['not'] == null ? null : (BudgetFilterExpressionOrNot.fromMap((map['not'] as Map).cast<String, dynamic>())).input(),
      ors: map['ors'] == null ? null : (pulumi.Input.decodeList<BudgetFilterExpressionOrOr>(map['ors'], (value) => BudgetFilterExpressionOrOr.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : (BudgetFilterExpressionOrTags.fromMap((map['tags'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

