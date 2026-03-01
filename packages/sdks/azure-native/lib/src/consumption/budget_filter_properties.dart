// ignore_for_file: unused_element, unnecessary_cast

import 'budget_comparison_expression.dart';

/// The Dimensions or Tags to filter a budget by.
class BudgetFilterProperties {
  /// Has comparison expression for a dimension
  final BudgetComparisonExpression? dimensions;
  /// Has comparison expression for a tag
  final BudgetComparisonExpression? tags;

  /// Creates a new [BudgetFilterProperties].
  /// [dimensions] Has comparison expression for a dimension
  /// [tags] Has comparison expression for a tag
  BudgetFilterProperties({
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions == null ? null : dimensions!.toMap(),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory BudgetFilterProperties.fromMap(Map<String, dynamic> map) {
    return BudgetFilterProperties(
      dimensions: map['dimensions'] == null ? null : BudgetComparisonExpression.fromMap((map['dimensions'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : BudgetComparisonExpression.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

