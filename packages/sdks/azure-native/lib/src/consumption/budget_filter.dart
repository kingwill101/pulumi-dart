// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_comparison_expression.dart';
import 'budget_filter_properties.dart';

/// May be used to filter budgets by resource group, resource, or meter.
class BudgetFilter {
  /// The logical "AND" expression. Must have at least 2 items.
  final List<BudgetFilterProperties>? and;
  /// Has comparison expression for a dimension
  final BudgetComparisonExpression? dimensions;
  /// Has comparison expression for a tag
  final BudgetComparisonExpression? tags;

  /// Creates a new [BudgetFilter].
  /// [and] The logical "AND" expression. Must have at least 2 items.
  /// [dimensions] Has comparison expression for a dimension
  /// [tags] Has comparison expression for a tag
  BudgetFilter({
    this.and,
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?and == null ? null : pulumi.Input.encodeList<BudgetFilterProperties, Map<String, dynamic>>(and!, (value) => value.toMap()),
      'dimensions': ?dimensions == null ? null : dimensions!.toMap(),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory BudgetFilter.fromMap(Map<String, dynamic> map) {
    return BudgetFilter(
      and: map['and'] == null ? null : pulumi.Input.decodeList<BudgetFilterProperties>(map['and'], (value) => BudgetFilterProperties.fromMap((value as Map).cast<String, dynamic>())),
      dimensions: map['dimensions'] == null ? null : BudgetComparisonExpression.fromMap((map['dimensions'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : BudgetComparisonExpression.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

