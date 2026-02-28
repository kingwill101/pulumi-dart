// ignore_for_file: unused_element, unnecessary_cast

import 'money.dart';

/// Compensation range.
class CompensationRange {
  /// Optional. The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.
  final Money? maxCompensation;

  /// Optional. The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.
  final Money? minCompensation;

  /// Creates a new [CompensationRange].
  /// [maxCompensation] Optional. The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.
  /// [minCompensation] Optional. The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.
  CompensationRange({
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

  factory CompensationRange.fromMap(Map<String, dynamic> map) {
    return CompensationRange(
      maxCompensation: map['maxCompensation'] == null
          ? null
          : Money.fromMap(
              (map['maxCompensation'] as Map).cast<String, dynamic>()),
      minCompensation: map['minCompensation'] == null
          ? null
          : Money.fromMap(
              (map['minCompensation'] as Map).cast<String, dynamic>()),
    );
  }
}
