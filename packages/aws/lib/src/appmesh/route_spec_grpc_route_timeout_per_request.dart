// ignore_for_file: unused_element, unnecessary_cast

class RouteSpecGrpcRouteTimeoutPerRequest {
  /// Unit of time. Valid values: `ms`, `s`.
  final String unit;

  /// Number of time units. Minimum value of `0`.
  final int value;

  /// Creates a new [RouteSpecGrpcRouteTimeoutPerRequest].
  /// [unit] Unit of time. Valid values: `ms`, `s`.
  /// [value] Number of time units. Minimum value of `0`.
  RouteSpecGrpcRouteTimeoutPerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory RouteSpecGrpcRouteTimeoutPerRequest.fromMap(
      Map<String, dynamic> map) {
    return RouteSpecGrpcRouteTimeoutPerRequest(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
