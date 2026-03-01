// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_comparison_expression_response.dart';
import 'budget_filter_properties_response.dart';

/// May be used to filter budgets by resource group, resource, or meter.
class BudgetFilterResponse {
  /// The logical "AND" expression. Must have at least 2 items.
  final List<BudgetFilterPropertiesResponse>? and;
  /// Has comparison expression for a dimension
  final BudgetComparisonExpressionResponse? dimensions;
  /// Has comparison expression for a tag
  final BudgetComparisonExpressionResponse? tags;

  /// Creates a new [BudgetFilterResponse].
  /// [and] The logical "AND" expression. Must have at least 2 items.
  /// [dimensions] Has comparison expression for a dimension
  /// [tags] Has comparison expression for a tag
  BudgetFilterResponse({
    this.and,
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?and == null ? null : pulumi.Input.encodeList<BudgetFilterPropertiesResponse, Map<String, dynamic>>(and!, (value) => value.toMap()),
      'dimensions': ?dimensions == null ? null : dimensions!.toMap(),
      'tags': ?tags == null ? null : tags!.toMap(),
    };
  }

  factory BudgetFilterResponse.fromMap(Map<String, dynamic> map) {
    return BudgetFilterResponse(
      and: map['and'] == null ? null : pulumi.Input.decodeList<BudgetFilterPropertiesResponse>(map['and'], (value) => BudgetFilterPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      dimensions: map['dimensions'] == null ? null : BudgetComparisonExpressionResponse.fromMap((map['dimensions'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : BudgetComparisonExpressionResponse.fromMap((map['tags'] as Map).cast<String, dynamic>()),
    );
  }
}

