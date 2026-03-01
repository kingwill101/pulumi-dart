// ignore_for_file: unused_element, unnecessary_cast


class RouteSpecHttpRouteTimeoutPerRequest {
  /// Unit of time. Valid values: `ms`, `s`.
  final String unit;
  /// Number of time units. Minimum value of `0`.
  final int value;

  /// Creates a new [RouteSpecHttpRouteTimeoutPerRequest].
  /// [unit] Unit of time. Valid values: `ms`, `s`.
  /// [value] Number of time units. Minimum value of `0`.
  RouteSpecHttpRouteTimeoutPerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory RouteSpecHttpRouteTimeoutPerRequest.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRouteTimeoutPerRequest(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

