// ignore_for_file: unused_element, unnecessary_cast

import 'budget_comparison_expression_response.dart';

/// The Dimensions or Tags to filter a budget by.
///
/// Supported for CategoryType(s): Cost, ReservationUtilization.
class BudgetFilterPropertiesResponse {
  /// Has comparison expression for a dimension.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  ///
  /// Supported dimension names for **CategoryType: ReservationUtilization**
  /// - ReservationId
  /// - ReservedResourceType
  final BudgetComparisonExpressionResponse? dimensions;
  /// Has comparison expression for a tag.
  ///
  /// Supported for CategoryType(s): Cost.
  final BudgetComparisonExpressionResponse? tags;

  /// Creates a new [BudgetFilterPropertiesResponse].
  /// [dimensions] Has comparison expression for a dimension.
  /// [tags] Has comparison expression for a tag.
  BudgetFilterPropertiesResponse({
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions == null ? null : dimensions!.toMap(),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory BudgetFilterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BudgetFilterPropertiesResponse(
      dimensions: map['dimensions'] == null ? null : BudgetComparisonExpressionResponse.fromMap((map['dimensions'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : BudgetComparisonExpressionResponse.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

