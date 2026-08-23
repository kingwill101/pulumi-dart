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
  final pulumi.Input<List<BudgetFilterExpressionAnd>>? ands;
  /// (Optional) A Cost Category Filter block.
  final pulumi.Input<BudgetFilterExpressionCostCategories>? costCategories;
  /// (Optional) A Dimension Filter block.
  final pulumi.Input<BudgetFilterExpressionDimensions>? dimensions;
  /// (Optional) A single filter expression to negate. Must contain exactly one root.
  final pulumi.Input<BudgetFilterExpressionNot>? not;
  /// (Optional) A list of filter expressions to combine with OR logic. Each `or` block is one operand and must itself contain exactly one root.
  final pulumi.Input<List<BudgetFilterExpressionOr>>? ors;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<BudgetFilterExpressionTags>? tags;

  /// Creates a new [BudgetFilterExpression].
  /// [ands] (Optional) A list of filter expressions to combine with AND logic. Each `and` block is one operand and must itself contain exactly one root.
  /// [costCategories] (Optional) A Cost Category Filter block.
  /// [dimensions] (Optional) A Dimension Filter block.
  /// [not] (Optional) A single filter expression to negate. Must contain exactly one root.
  /// [ors] (Optional) A list of filter expressions to combine with OR logic. Each `or` block is one operand and must itself contain exactly one root.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const BudgetFilterExpression({
    this.ands,
    this.costCategories,
    this.dimensions,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?pulumi.Input.mapOptionalInputValue<List<BudgetFilterExpressionAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<BudgetFilterExpressionAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
      'costCategories': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionCostCategories, Map<String, dynamic>>(costCategories, (value) => value.toMap()),
      'dimensions': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionDimensions, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'not': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionNot, Map<String, dynamic>>(not, (value) => value.toMap()),
      'ors': ?pulumi.Input.mapOptionalInputValue<List<BudgetFilterExpressionOr>, List<Map<String, dynamic>>>(ors, (value) => pulumi.Input.encodeList<BudgetFilterExpressionOr, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?pulumi.Input.mapOptionalInputValue<BudgetFilterExpressionTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory BudgetFilterExpression.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpression(
      ands: (() { final guardedValue = map['ands']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BudgetFilterExpressionAnd>(guardedValue, (value) => BudgetFilterExpressionAnd.fromMap((value as Map).cast<String, dynamic>()))); })(),
      costCategories: (() { final guardedValue = map['costCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetFilterExpressionCostCategories.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetFilterExpressionDimensions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      not: (() { final guardedValue = map['not']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetFilterExpressionNot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ors: (() { final guardedValue = map['ors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BudgetFilterExpressionOr>(guardedValue, (value) => BudgetFilterExpressionOr.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetFilterExpressionTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
