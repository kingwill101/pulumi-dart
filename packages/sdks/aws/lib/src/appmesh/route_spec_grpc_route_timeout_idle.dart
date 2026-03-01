// ignore_for_file: unused_element, unnecessary_cast


class RouteSpecGrpcRouteTimeoutIdle {
  /// Unit of time. Valid values: `ms`, `s`.
  final String unit;
  /// Number of time units. Minimum value of `0`.
  final int value;

  /// Creates a new [RouteSpecGrpcRouteTimeoutIdle].
  /// [unit] Unit of time. Valid values: `ms`, `s`.
  /// [value] Number of time units. Minimum value of `0`.
  RouteSpecGrpcRouteTimeoutIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory RouteSpecGrpcRouteTimeoutIdle.fromMap(Map<String, dynamic> map) {
    return RouteSpecGrpcRouteTimeoutIdle(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

