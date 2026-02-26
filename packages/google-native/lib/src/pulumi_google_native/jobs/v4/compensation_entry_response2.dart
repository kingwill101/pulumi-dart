// ignore_for_file: unused_element, unnecessary_cast

import 'compensation_range_response2.dart';
import 'money_response3.dart';

/// A compensation entry that represents one component of compensation, such as base pay, bonus, or other compensation type. Annualization: One compensation entry can be annualized if - it contains valid amount or range. - and its expected_units_per_year is set or can be derived. Its annualized range is determined as (amount or range) times expected_units_per_year.
class CompensationEntryResponse2 {
  /// Compensation amount.
  final MoneyResponse3 amount;

  /// Compensation description. For example, could indicate equity terms or provide additional context to an estimated bonus.
  final String description;

  /// Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME, a default value is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1
  final double expectedUnitsPerYear;

  /// Compensation range.
  final CompensationRangeResponse2 range;

  /// Compensation type. Default is CompensationType.COMPENSATION_TYPE_UNSPECIFIED.
  final String type;

  /// Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  final String unit;

  CompensationEntryResponse2({
    required this.amount,
    required this.description,
    required this.expectedUnitsPerYear,
    required this.range,
    required this.type,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['amount'] = amount.toMap();
    map['description'] = description;
    map['expectedUnitsPerYear'] = expectedUnitsPerYear;
    map['range'] = range.toMap();
    map['type'] = type;
    map['unit'] = unit;
    return map;
  }

  factory CompensationEntryResponse2.fromMap(Map<String, dynamic> map) {
    return CompensationEntryResponse2(
      amount: MoneyResponse3.fromMap(
          (map['amount'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      expectedUnitsPerYear: map['expectedUnitsPerYear'] as double,
      range: CompensationRangeResponse2.fromMap(
          (map['range'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      unit: map['unit'] as String,
    );
  }
}
