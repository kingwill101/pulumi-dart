// ignore_for_file: unused_element, unnecessary_cast

import 'money_response_jobs_v4.dart';

/// Compensation range.
class CompensationRangeResponseJobsV4 {
  /// The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.
  final MoneyResponseJobsV4 maxCompensation;

  /// The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.
  final MoneyResponseJobsV4 minCompensation;

  /// Creates a new [CompensationRangeResponseJobsV4].
  /// [maxCompensation] The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.
  /// [minCompensation] The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.
  CompensationRangeResponseJobsV4({
    required this.maxCompensation,
    required this.minCompensation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCompensation': maxCompensation.toMap(),
      'minCompensation': minCompensation.toMap(),
    };
  }

  factory CompensationRangeResponseJobsV4.fromMap(Map<String, dynamic> map) {
    return CompensationRangeResponseJobsV4(
      maxCompensation: MoneyResponseJobsV4.fromMap(
        (map['maxCompensation'] as Map).cast<String, dynamic>(),
      ),
      minCompensation: MoneyResponseJobsV4.fromMap(
        (map['minCompensation'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
