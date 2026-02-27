// ignore_for_file: unused_element, unnecessary_cast

class RouteSpecGrpcRouteRetryPolicyPerRetryTimeout {
  /// Retry unit. Valid values: `ms`, `s`.
  final String unit;

  /// Retry value.
  final int value;

  RouteSpecGrpcRouteRetryPolicyPerRetryTimeout({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory RouteSpecGrpcRouteRetryPolicyPerRetryTimeout.fromMap(
      Map<String, dynamic> map) {
    return RouteSpecGrpcRouteRetryPolicyPerRetryTimeout(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
