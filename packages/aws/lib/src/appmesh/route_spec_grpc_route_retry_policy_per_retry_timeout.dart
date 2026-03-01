// ignore_for_file: unused_element, unnecessary_cast

class RouteSpecGrpcRouteRetryPolicyPerRetryTimeout {
  /// Retry unit. Valid values: `ms`, `s`.
  final String unit;

  /// Retry value.
  final int value;

  /// Creates a new [RouteSpecGrpcRouteRetryPolicyPerRetryTimeout].
  /// [unit] Retry unit. Valid values: `ms`, `s`.
  /// [value] Retry value.
  RouteSpecGrpcRouteRetryPolicyPerRetryTimeout({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': unit, 'value': value};
  }

  factory RouteSpecGrpcRouteRetryPolicyPerRetryTimeout.fromMap(
    Map<String, dynamic> map,
  ) {
    return RouteSpecGrpcRouteRetryPolicyPerRetryTimeout(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
