// ignore_for_file: unused_element, unnecessary_cast

import 'money_jobs_v4.dart';

/// Compensation range.
class CompensationRangeJobsV4 {
  /// The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.
  final MoneyJobsV4? maxCompensation;

  /// The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.
  final MoneyJobsV4? minCompensation;

  /// Creates a new [CompensationRangeJobsV4].
  /// [maxCompensation] The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.
  /// [minCompensation] The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.
  CompensationRangeJobsV4({
    this.maxCompensation,
    this.minCompensation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxCompensationValue = maxCompensation;
    if (maxCompensationValue != null) {
      map['maxCompensation'] = maxCompensationValue.toMap();
    }
    final minCompensationValue = minCompensation;
    if (minCompensationValue != null) {
      map['minCompensation'] = minCompensationValue.toMap();
    }
    return map;
  }

  factory CompensationRangeJobsV4.fromMap(Map<String, dynamic> map) {
    return CompensationRangeJobsV4(
      maxCompensation: map['maxCompensation'] == null
          ? null
          : MoneyJobsV4.fromMap(
              (map['maxCompensation'] as Map).cast<String, dynamic>()),
      minCompensation: map['minCompensation'] == null
          ? null
          : MoneyJobsV4.fromMap(
              (map['minCompensation'] as Map).cast<String, dynamic>()),
    );
  }
}
