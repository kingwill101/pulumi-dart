// ignore_for_file: unused_element, unnecessary_cast

import 'compensation_entry_type2.dart';
import 'compensation_entry_unit2.dart';
import 'compensation_range2.dart';
import 'money5.dart';

/// A compensation entry that represents one component of compensation, such as base pay, bonus, or other compensation type. Annualization: One compensation entry can be annualized if - it contains valid amount or range. - and its expected_units_per_year is set or can be derived. Its annualized range is determined as (amount or range) times expected_units_per_year.
class CompensationEntry2 {
  /// Compensation amount.
  final Money5? amount;

  /// Compensation description. For example, could indicate equity terms or provide additional context to an estimated bonus.
  final String? description;

  /// Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME, a default value is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1
  final double? expectedUnitsPerYear;

  /// Compensation range.
  final CompensationRange2? range;

  /// Compensation type. Default is CompensationType.COMPENSATION_TYPE_UNSPECIFIED.
  final CompensationEntryType2? type;

  /// Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  final CompensationEntryUnit2? unit;

  CompensationEntry2({
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

  factory CompensationEntry2.fromMap(Map<String, dynamic> map) {
    return CompensationEntry2(
      amount: map['amount'] == null
          ? null
          : Money5.fromMap((map['amount'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      expectedUnitsPerYear: map['expectedUnitsPerYear'] == null
          ? null
          : map['expectedUnitsPerYear'] as double,
      range: map['range'] == null
          ? null
          : CompensationRange2.fromMap(
              (map['range'] as Map).cast<String, dynamic>()),
      type: map['type'] == null
          ? null
          : CompensationEntryType2.fromValue(map['type'] as String),
      unit: map['unit'] == null
          ? null
          : CompensationEntryUnit2.fromValue(map['unit'] as String),
    );
  }
}
