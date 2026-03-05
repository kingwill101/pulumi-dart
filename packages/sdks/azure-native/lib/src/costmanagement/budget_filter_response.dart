// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_comparison_expression_response.dart';
import 'budget_filter_properties_response.dart';

/// May be used to filter budgets by user-specified dimensions and/or tags.
///
/// Supported for CategoryType(s): Cost, ReservationUtilization.
class BudgetFilterResponse {
  /// The logical "AND" expression. Must have at least 2 items.
  ///
  /// Supported for CategoryType(s): Cost.
  final pulumi.Input<List<BudgetFilterPropertiesResponse>>? and;
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

  /// Creates a new [BudgetFilterResponse].
  /// [and] The logical "AND" expression. Must have at least 2 items.
  /// [dimensions] Has comparison expression for a dimension.
  /// [tags] Has comparison expression for a tag.
  BudgetFilterResponse({
    this.and,
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?pulumi.Input.mapOptionalInputValue<List<BudgetFilterPropertiesResponse>, List<Map<String, dynamic>>>(and, (value) => pulumi.Input.encodeList<BudgetFilterPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimensions': ?pulumi.Input.mapOptionalInputValue<BudgetComparisonExpressionResponse, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<BudgetComparisonExpressionResponse, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory BudgetFilterResponse.fromMap(Map<String, dynamic> map) {
    return BudgetFilterResponse(
      and: (() { final guardedValue = map['and']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BudgetFilterPropertiesResponse>(guardedValue, (value) => BudgetFilterPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetComparisonExpressionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetComparisonExpressionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

