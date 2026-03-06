// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_comparison_expression.dart';

/// The Dimensions or Tags to filter a budget by.
///
/// Supported for CategoryType(s): Cost, ReservationUtilization.
class BudgetFilterProperties {
  /// Has comparison expression for a dimension.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  ///
  /// Supported dimension names for **CategoryType: ReservationUtilization**
  /// - ReservationId
  /// - ReservedResourceType
  final pulumi.Input<BudgetComparisonExpression>? dimensions;
  /// Has comparison expression for a tag.
  ///
  /// Supported for CategoryType(s): Cost.
  final pulumi.Input<BudgetComparisonExpression>? tags;

  /// Creates a new [BudgetFilterProperties].
  /// [dimensions] Has comparison expression for a dimension.
  /// [tags] Has comparison expression for a tag.
  const BudgetFilterProperties({
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
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetComparisonExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetComparisonExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

