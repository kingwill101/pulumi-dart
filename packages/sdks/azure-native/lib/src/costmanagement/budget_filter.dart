// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_comparison_expression.dart';
import 'budget_filter_properties.dart';

/// May be used to filter budgets by user-specified dimensions and/or tags.
///
/// Supported for CategoryType(s): Cost, ReservationUtilization.
class BudgetFilter {
  /// The logical "AND" expression. Must have at least 2 items.
  ///
  /// Supported for CategoryType(s): Cost.
  final pulumi.Input<List<BudgetFilterProperties>>? and;
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

  /// Creates a new [BudgetFilter].
  /// [and] The logical "AND" expression. Must have at least 2 items.
  /// [dimensions] Has comparison expression for a dimension.
  /// [tags] Has comparison expression for a tag.
  BudgetFilter({
    this.and,
    this.dimensions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?pulumi.Input.mapOptionalInputValue<List<BudgetFilterProperties>, List<Map<String, dynamic>>>(and, (value) => pulumi.Input.encodeList<BudgetFilterProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimensions': ?pulumi.Input.mapOptionalInputValue<BudgetComparisonExpression, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<BudgetComparisonExpression, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory BudgetFilter.fromMap(Map<String, dynamic> map) {
    return BudgetFilter(
      and: map['and'] == null ? null : (pulumi.Input.decodeList<BudgetFilterProperties>(map['and']!, (value) => BudgetFilterProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dimensions: map['dimensions'] == null ? null : (BudgetComparisonExpression.fromMap((map['dimensions']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : (BudgetComparisonExpression.fromMap((map['tags']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

