// ignore_for_file: unused_element, unnecessary_cast

import 'money_response2.dart';

/// Compensation range.
class CompensationRangeResponse {
  /// Optional. The maximum amount of compensation. If left empty, the value is set to a maximal compensation value and the currency code is set to match the currency code of min_compensation.
  final MoneyResponse2 maxCompensation;

  /// Optional. The minimum amount of compensation. If left empty, the value is set to zero and the currency code is set to match the currency code of max_compensation.
  final MoneyResponse2 minCompensation;

  CompensationRangeResponse({
    required this.maxCompensation,
    required this.minCompensation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxCompensation'] = maxCompensation.toMap();
    map['minCompensation'] = minCompensation.toMap();
    return map;
  }

  factory CompensationRangeResponse.fromMap(Map<String, dynamic> map) {
    return CompensationRangeResponse(
      maxCompensation: MoneyResponse2.fromMap(
          (map['maxCompensation'] as Map).cast<String, dynamic>()),
      minCompensation: MoneyResponse2.fromMap(
          (map['minCompensation'] as Map).cast<String, dynamic>()),
    );
  }
}
