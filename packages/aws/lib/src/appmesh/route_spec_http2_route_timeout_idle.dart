// ignore_for_file: unused_element, unnecessary_cast

class RouteSpecHttp2RouteTimeoutIdle {
  /// Unit of time. Valid values: `ms`, `s`.
  final String unit;

  /// Number of time units. Minimum value of `0`.
  final int value;

  /// Creates a new [RouteSpecHttp2RouteTimeoutIdle].
  /// [unit] Unit of time. Valid values: `ms`, `s`.
  /// [value] Number of time units. Minimum value of `0`.
  RouteSpecHttp2RouteTimeoutIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory RouteSpecHttp2RouteTimeoutIdle.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteTimeoutIdle(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
