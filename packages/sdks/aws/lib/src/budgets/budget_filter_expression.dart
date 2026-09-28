// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_filter_expression_and.dart';
import 'budget_filter_expression_cost_categories.dart';
import 'budget_filter_expression_dimensions.dart';
import 'budget_filter_expression_not.dart';
import 'budget_filter_expression_or.dart';
import 'budget_filter_expression_tags.dart';

class BudgetFilterExpression {
  /// List of filter expressions to combine with AND logic. Each `and` block is one operand and must itself contain exactly one root.
  final pulumi.Input<List<BudgetFilterExpressionAnd>?>? ands;
  /// Cost Categories block.
  final pulumi.Input<BudgetFilterExpressionCostCategories?>? costCategories;
  /// Dimensions block.
  final pulumi.Input<BudgetFilterExpressionDimensions?>? dimensions;
  /// Single filter expression to negate. Must contain exactly one root.
  final pulumi.Input<BudgetFilterExpressionNot?>? not;
  /// List of filter expressions to combine with OR logic. Each `or` block is one operand and must itself contain exactly one root.
  final pulumi.Input<List<BudgetFilterExpressionOr>?>? ors;
  /// Tags block.
  final pulumi.Input<BudgetFilterExpressionTags?>? tags;

  /// Creates a new [BudgetFilterExpression].
  /// [ands] List of filter expressions to combine with AND logic. Each `and` block is one operand and must itself contain exactly one root.
  /// [costCategories] Cost Categories block.
  /// [dimensions] Dimensions block.
  /// [not] Single filter expression to negate. Must contain exactly one root.
  /// [ors] List of filter expressions to combine with OR logic. Each `or` block is one operand and must itself contain exactly one root.
  /// [tags] Tags block.
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
