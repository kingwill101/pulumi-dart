// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_comparison_expression.dart';

/// The Dimensions or Tags to filter a budget by.
class BudgetFilterProperties {
  /// Has comparison expression for a dimension
  final pulumi.Input<BudgetComparisonExpression>? dimensions;
  /// Has comparison expression for a tag
  final pulumi.Input<BudgetComparisonExpression>? tags;

  /// Creates a new [BudgetFilterProperties].
  /// [dimensions] Has comparison expression for a dimension
  /// [tags] Has comparison expression for a tag
  BudgetFilterProperties({
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<BudgetComparisonExpression, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<BudgetComparisonExpression, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory BudgetFilterProperties.fromMap(Map<String, dynamic> map) {
    return BudgetFilterProperties(
      dimensions: map['dimensions'] == null ? null : (BudgetComparisonExpression.fromMap((map['dimensions']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : (BudgetComparisonExpression.fromMap((map['tags']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

