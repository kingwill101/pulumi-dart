// ignore_for_file: unused_element, unnecessary_cast

class RouteSpecTcpRouteTimeoutIdle {
  /// Unit of time. Valid values: `ms`, `s`.
  final String unit;

  /// Number of time units. Minimum value of `0`.
  final int value;

  /// Creates a new [RouteSpecTcpRouteTimeoutIdle].
  /// [unit] Unit of time. Valid values: `ms`, `s`.
  /// [value] Number of time units. Minimum value of `0`.
  RouteSpecTcpRouteTimeoutIdle({required this.unit, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': unit, 'value': value};
  }

  factory RouteSpecTcpRouteTimeoutIdle.fromMap(Map<String, dynamic> map) {
    return RouteSpecTcpRouteTimeoutIdle(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
