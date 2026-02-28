// ignore_for_file: unused_element, unnecessary_cast


/// Range of numerical values within min and max.
class GoogleMonitoringV3RangeResponse {
  /// Range maximum.
  final double max;
  /// Range minimum.
  final double min;

  /// Creates a new [GoogleMonitoringV3RangeResponse].
  /// [max] Range maximum.
  /// [min] Range minimum.
  GoogleMonitoringV3RangeResponse({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GoogleMonitoringV3RangeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleMonitoringV3RangeResponse(
      max: map['max'] as double,
      min: map['min'] as double,
    );
  }
}

