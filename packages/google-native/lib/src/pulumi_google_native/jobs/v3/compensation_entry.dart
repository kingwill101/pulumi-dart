// ignore_for_file: unused_element, unnecessary_cast

import 'compensation_entry_type.dart';
import 'compensation_entry_unit.dart';
import 'compensation_range.dart';
import 'money_jobs_v3.dart';

/// A compensation entry that represents one component of compensation, such as base pay, bonus, or other compensation type. Annualization: One compensation entry can be annualized if - it contains valid amount or range. - and its expected_units_per_year is set or can be derived. Its annualized range is determined as (amount or range) times expected_units_per_year.
class CompensationEntry {
  /// Optional. Compensation amount.
  final MoneyJobsV3? amount;

  /// Optional. Compensation description. For example, could indicate equity terms or provide additional context to an estimated bonus.
  final String? description;

  /// Optional. Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME, a default value is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1
  final double? expectedUnitsPerYear;

  /// Optional. Compensation range.
  final CompensationRange? range;

  /// Optional. Compensation type. Default is CompensationUnit.COMPENSATION_TYPE_UNSPECIFIED.
  final CompensationEntryType? type;

  /// Optional. Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  final CompensationEntryUnit? unit;

  CompensationEntry({
    this.amount,
    this.description,
    this.expectedUnitsPerYear,
    this.range,
    this.type,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amountValue = amount;
    if (amountValue != null) {
      map['amount'] = amountValue.toMap();
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final expectedUnitsPerYearValue = expectedUnitsPerYear;
    if (expectedUnitsPerYearValue != null) {
      map['expectedUnitsPerYear'] = expectedUnitsPerYearValue;
    }
    final rangeValue = range;
    if (rangeValue != null) {
      map['range'] = rangeValue.toMap();
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    final unitValue = unit;
    if (unitValue != null) {
      map['unit'] = unitValue.value;
    }
    return map;
  }

  factory CompensationEntry.fromMap(Map<String, dynamic> map) {
    return CompensationEntry(
      amount: map['amount'] == null
          ? null
          : MoneyJobsV3.fromMap((map['amount'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      expectedUnitsPerYear: map['expectedUnitsPerYear'] == null
          ? null
          : map['expectedUnitsPerYear'] as double,
      range: map['range'] == null
          ? null
          : CompensationRange.fromMap(
              (map['range'] as Map).cast<String, dynamic>()),
      type: map['type'] == null
          ? null
          : CompensationEntryType.fromValue(map['type'] as String),
      unit: map['unit'] == null
          ? null
          : CompensationEntryUnit.fromValue(map['unit'] as String),
    );
  }
}
