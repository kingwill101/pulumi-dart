// ignore_for_file: unused_element, unnecessary_cast

class RouteSpecHttpRouteRetryPolicyPerRetryTimeout {
  /// Retry unit. Valid values: `ms`, `s`.
  final String unit;

  /// Retry value.
  final int value;

  /// Creates a new [RouteSpecHttpRouteRetryPolicyPerRetryTimeout].
  /// [unit] Retry unit. Valid values: `ms`, `s`.
  /// [value] Retry value.
  RouteSpecHttpRouteRetryPolicyPerRetryTimeout({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory RouteSpecHttpRouteRetryPolicyPerRetryTimeout.fromMap(
      Map<String, dynamic> map) {
    return RouteSpecHttpRouteRetryPolicyPerRetryTimeout(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
