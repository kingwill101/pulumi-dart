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
  final List<BudgetFilterExpressionAndAnd>? ands;

  /// (Optional) A Cost Category Filter block.
  final BudgetFilterExpressionAndCostCategories? costCategories;

  /// (Optional) A Dimension Filter block.
  final BudgetFilterExpressionAndDimensions? dimensions;

  /// (Optional) A single filter expression to negate. Must contain exactly one root.
  final BudgetFilterExpressionAndNot? not;

  /// (Optional) A list of filter expressions to combine with OR logic. Each `or` block is one operand and must itself contain exactly one root.
  final List<BudgetFilterExpressionAndOr>? ors;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final BudgetFilterExpressionAndTags? tags;

  /// Creates a new [BudgetFilterExpressionAnd].
  /// [ands] (Optional) A list of filter expressions to combine with AND logic. Each `and` block is one operand and must itself contain exactly one root.
  /// [costCategories] (Optional) A Cost Category Filter block.
  /// [dimensions] (Optional) A Dimension Filter block.
  /// [not] (Optional) A single filter expression to negate. Must contain exactly one root.
  /// [ors] (Optional) A list of filter expressions to combine with OR logic. Each `or` block is one operand and must itself contain exactly one root.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  BudgetFilterExpressionAnd({
    this.ands,
    this.costCategories,
    this.dimensions,
    this.not,
    this.ors,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?ands == null
          ? null
          : pulumi.Input.encodeList<
              BudgetFilterExpressionAndAnd,
              Map<String, dynamic>
            >(ands!, (value) => value.toMap()),
      'costCategories': ?costCategories == null
          ? null
          : costCategories!.toMap(),
      'dimensions': ?dimensions == null ? null : dimensions!.toMap(),
      'not': ?not == null ? null : not!.toMap(),
      'ors': ?ors == null
          ? null
          : pulumi.Input.encodeList<
              BudgetFilterExpressionAndOr,
              Map<String, dynamic>
            >(ors!, (value) => value.toMap()),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory BudgetFilterExpressionAnd.fromMap(Map<String, dynamic> map) {
    return BudgetFilterExpressionAnd(
      ands: map['ands'] == null
          ? null
          : pulumi.Input.decodeList<BudgetFilterExpressionAndAnd>(
              map['ands'],
              (value) => BudgetFilterExpressionAndAnd.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      costCategories: map['costCategories'] == null
          ? null
          : BudgetFilterExpressionAndCostCategories.fromMap(
              (map['costCategories'] as Map).cast<String, dynamic>(),
            ),
      dimensions: map['dimensions'] == null
          ? null
          : BudgetFilterExpressionAndDimensions.fromMap(
              (map['dimensions'] as Map).cast<String, dynamic>(),
            ),
      not: map['not'] == null
          ? null
          : BudgetFilterExpressionAndNot.fromMap(
              (map['not'] as Map).cast<String, dynamic>(),
            ),
      ors: map['ors'] == null
          ? null
          : pulumi.Input.decodeList<BudgetFilterExpressionAndOr>(
              map['ors'],
              (value) => BudgetFilterExpressionAndOr.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      tags: map['tags'] == null
          ? null
          : BudgetFilterExpressionAndTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
