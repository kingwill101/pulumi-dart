// ignore_for_file: unused_element, unnecessary_cast

/// Range of numerical values within min and max.
class GoogleMonitoringV3RangeResponse {
  /// Range maximum.
  final double max;

  /// Range minimum.
  final double min;

  GoogleMonitoringV3RangeResponse({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GoogleMonitoringV3RangeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleMonitoringV3RangeResponse(
      max: map['max'] as double,
      min: map['min'] as double,
    );
  }
}
