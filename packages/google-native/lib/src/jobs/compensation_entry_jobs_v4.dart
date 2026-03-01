// ignore_for_file: unused_element, unnecessary_cast

import 'compensation_entry_type_jobs_v4.dart';
import 'compensation_entry_unit_jobs_v4.dart';
import 'compensation_range_jobs_v4.dart';
import 'money_jobs_v4.dart';

/// A compensation entry that represents one component of compensation, such as base pay, bonus, or other compensation type. Annualization: One compensation entry can be annualized if - it contains valid amount or range. - and its expected_units_per_year is set or can be derived. Its annualized range is determined as (amount or range) times expected_units_per_year.
class CompensationEntryJobsV4 {
  /// Compensation amount.
  final MoneyJobsV4? amount;

  /// Compensation description. For example, could indicate equity terms or provide additional context to an estimated bonus.
  final String? description;

  /// Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME, a default value is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1
  final double? expectedUnitsPerYear;

  /// Compensation range.
  final CompensationRangeJobsV4? range;

  /// Compensation type. Default is CompensationType.COMPENSATION_TYPE_UNSPECIFIED.
  final CompensationEntryTypeJobsV4? type;

  /// Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  final CompensationEntryUnitJobsV4? unit;

  /// Creates a new [CompensationEntryJobsV4].
  /// [amount] Compensation amount.
  /// [description] Compensation description. For example, could indicate equity terms or provide additional context to an estimated bonus.
  /// [expectedUnitsPerYear] Expected number of units paid each year. If not specified, when Job.employment_types is FULLTIME, a default value is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 - WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1
  /// [range] Compensation range.
  /// [type] Compensation type. Default is CompensationType.COMPENSATION_TYPE_UNSPECIFIED.
  /// [unit] Frequency of the specified amount. Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  CompensationEntryJobsV4({
    this.amount,
    this.description,
    this.expectedUnitsPerYear,
    this.range,
    this.type,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount == null ? null : amount!.toMap(),
      'description': ?description,
      'expectedUnitsPerYear': ?expectedUnitsPerYear,
      'range': ?range == null ? null : range!.toMap(),
      'type': ?type == null ? null : type!.value,
      'unit': ?unit == null ? null : unit!.value,
    };
  }

  factory CompensationEntryJobsV4.fromMap(Map<String, dynamic> map) {
    return CompensationEntryJobsV4(
      amount: map['amount'] == null
          ? null
          : MoneyJobsV4.fromMap((map['amount'] as Map).cast<String, dynamic>()),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      expectedUnitsPerYear: map['expectedUnitsPerYear'] == null
          ? null
          : map['expectedUnitsPerYear'] as double,
      range: map['range'] == null
          ? null
          : CompensationRangeJobsV4.fromMap(
              (map['range'] as Map).cast<String, dynamic>(),
            ),
      type: map['type'] == null
          ? null
          : CompensationEntryTypeJobsV4.fromValue(map['type'] as String),
      unit: map['unit'] == null
          ? null
          : CompensationEntryUnitJobsV4.fromValue(map['unit'] as String),
    );
  }
}
