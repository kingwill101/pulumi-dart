// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_comparison_expression_response.dart';

/// The Dimensions or Tags to filter a budget by.
class BudgetFilterPropertiesResponse {
  /// Has comparison expression for a dimension
  final pulumi.Input<BudgetComparisonExpressionResponse>? dimensions;
  /// Has comparison expression for a tag
  final pulumi.Input<BudgetComparisonExpressionResponse>? tags;

  /// Creates a new [BudgetFilterPropertiesResponse].
  /// [dimensions] Has comparison expression for a dimension
  /// [tags] Has comparison expression for a tag
  const BudgetFilterPropertiesResponse({
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
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetComparisonExpressionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetComparisonExpressionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

