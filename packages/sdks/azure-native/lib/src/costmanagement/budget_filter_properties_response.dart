// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<BudgetComparisonExpressionResponse>? dimensions;
  /// Has comparison expression for a tag.
  ///
  /// Supported for CategoryType(s): Cost.
  final pulumi.Input<BudgetComparisonExpressionResponse>? tags;

  /// Creates a new [BudgetFilterPropertiesResponse].
  /// [dimensions] Has comparison expression for a dimension.
  /// [tags] Has comparison expression for a tag.
  BudgetFilterPropertiesResponse({
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<BudgetComparisonExpressionResponse, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<BudgetComparisonExpressionResponse, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory BudgetFilterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BudgetFilterPropertiesResponse(
      dimensions: map['dimensions'] == null ? null : (BudgetComparisonExpressionResponse.fromMap((map['dimensions'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : (BudgetComparisonExpressionResponse.fromMap((map['tags'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

