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
    return <String, dynamic>{
      'ands': ?ands == null ? null : pulumi.Input.encodeList<BudgetFilterExpressionAnd, Map<String, dynamic>>(ands!, (value) => value.toMap()),
      'costCategories': ?costCategories == null ? null : costCategories!.toMap(),
      'dimensions': ?dimensions == null ? null : dimensions!.toMap(),
      'not': ?not == null ? null : not!.toMap(),
      'ors': ?ors == null ? null : pulumi.Input.encodeList<BudgetFilterExpressionOr, Map<String, dynamic>>(ors!, (value) => value.toMap()),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory BudgetFilterExpression.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpression(
      ands: map['ands'] == null ? null : pulumi.Input.decodeList<BudgetFilterExpressionAnd>(map['ands'], (value) => BudgetFilterExpressionAnd.fromMap((value as Map).cast<String, dynamic>())),
      costCategories: map['costCategories'] == null ? null : BudgetFilterExpressionCostCategories.fromMap((map['costCategories'] as Map).cast<String, dynamic>()),
      dimensions: map['dimensions'] == null ? null : BudgetFilterExpressionDimensions.fromMap((map['dimensions'] as Map).cast<String, dynamic>()),
      not: map['not'] == null ? null : BudgetFilterExpressionNot.fromMap((map['not'] as Map).cast<String, dynamic>()),
      ors: map['ors'] == null ? null : pulumi.Input.decodeList<BudgetFilterExpressionOr>(map['ors'], (value) => BudgetFilterExpressionOr.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : BudgetFilterExpressionTags.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

