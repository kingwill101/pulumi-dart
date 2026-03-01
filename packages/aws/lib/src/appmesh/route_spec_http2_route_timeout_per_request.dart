// ignore_for_file: unused_element, unnecessary_cast


class RouteSpecHttp2RouteTimeoutPerRequest {
  /// Unit of time. Valid values: `ms`, `s`.
  final String unit;
  /// Number of time units. Minimum value of `0`.
  final int value;

  /// Creates a new [RouteSpecHttp2RouteTimeoutPerRequest].
  /// [unit] Unit of time. Valid values: `ms`, `s`.
  /// [value] Number of time units. Minimum value of `0`.
  RouteSpecHttp2RouteTimeoutPerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory RouteSpecHttp2RouteTimeoutPerRequest.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteTimeoutPerRequest(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

