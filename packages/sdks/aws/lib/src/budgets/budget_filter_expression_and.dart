// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_filter_expression_and_and.dart';
import 'budget_filter_expression_and_cost_categories.dart';
import 'budget_filter_expression_and_dimensions.dart';
import 'budget_filter_expression_and_not.dart';
import 'budget_filter_expression_and_or.dart';
import 'budget_filter_expression_and_tags.dart';

class BudgetFilterExpressionAnd {
  /// (Optional) A list of filter expressions to combine with AND logic. Each `and` block is one operand and must itself contain exactly one root.
  final pulumi.Input<List<BudgetFilterExpressionAndAnd>>? ands;
  /// (Optional) A Cost Category Filter block.
  final pulumi.Input<BudgetFilterExpressionAndCostCategories>? costCategories;
  /// (Optional) A Dimension Filter block.
  final pulumi.Input<BudgetFilterExpressionAndDimensions>? dimensions;
  /// (Optional) A single filter expression to negate. Must contain exactly one root.
  final pulumi.Input<BudgetFilterExpressionAndNot>? not;
  /// (Optional) A list of filter expressions to combine with OR logic. Each `or` block is one operand and must itself contain exactly one root.
  final pulumi.Input<List<BudgetFilterExpressionAndOr>>? ors;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<BudgetFilterExpressionAndTags>? tags;

  /// Creates a new [BudgetFilterExpressionAnd].
  /// [ands] (Optional) A list of filter expressions to combine with AND logic. Each `and` block is one operand and must itself contain exactly one root.
  /// [costCategories] (Optional) A Cost Category Filter block.
  /// [dimensions] (Optional) A Dimension Filter block.
  /// [not] (Optional) A single filter expression to negate. Must contain exactly one root.
  /// [ors] (Optional) A list of filter expressions to combine with OR logic. Each `or` block is one operand and must itself contain exactly one root.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const BudgetFilterExpressionAnd({
    this.ands,
    this.costCategories,
    this.dimensions,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?pulumi.Input.mapOptionalInputValue<List<BudgetFilterExpressionAndAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<BudgetFilterExpressionAndAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'costCategories': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionAndCostCategories, Map<String, dynamic>>(costCategories, (value) => value.toMap()),
      'dimensions': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionAndDimensions, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'not': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionAndNot, Map<String, dynamic>>(not, (value) => value.toMap()),
      'ors': ?pulumi.Input.mapOptionalInputValue<List<BudgetFilterExpressionAndOr>, List<Map<String, dynamic>>>(ors, (value) => pulumi.Input.encodeList<BudgetFilterExpressionAndOr, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionAndTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory BudgetFilterExpressionAnd.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionAnd(
      ands: (() { final guardedValue = map['ands']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BudgetFilterExpressionAndAnd>(guardedValue, (value) => BudgetFilterExpressionAndAnd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      costCategories: (() { final guardedValue = map['costCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetFilterExpressionAndCostCategories.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetFilterExpressionAndDimensions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      not: (() { final guardedValue = map['not']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetFilterExpressionAndNot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ors: (() { final guardedValue = map['ors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BudgetFilterExpressionAndOr>(guardedValue, (value) => BudgetFilterExpressionAndOr.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetFilterExpressionAndTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

