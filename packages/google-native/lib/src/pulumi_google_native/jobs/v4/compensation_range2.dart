// ignore_for_file: unused_element, unnecessary_cast

import 'money5.dart';

/// Compensation range.
class CompensationRange2 {
  /// The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.
  final Money5? maxCompensation;

  /// The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.
  final Money5? minCompensation;

  CompensationRange2({
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

  factory CompensationRange2.fromMap(Map<String, dynamic> map) {
    return CompensationRange2(
      maxCompensation: map['maxCompensation'] == null
          ? null
          : Money5.fromMap(
              (map['maxCompensation'] as Map).cast<String, dynamic>()),
      minCompensation: map['minCompensation'] == null
          ? null
          : Money5.fromMap(
              (map['minCompensation'] as Map).cast<String, dynamic>()),
    );
  }
}
