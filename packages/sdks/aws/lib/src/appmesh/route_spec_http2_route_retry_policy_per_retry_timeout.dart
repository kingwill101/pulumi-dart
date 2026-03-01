// ignore_for_file: unused_element, unnecessary_cast


class RouteSpecHttp2RouteRetryPolicyPerRetryTimeout {
  /// Retry unit. Valid values: `ms`, `s`.
  final String unit;
  /// Retry value.
  final int value;

  /// Creates a new [RouteSpecHttp2RouteRetryPolicyPerRetryTimeout].
  /// [unit] Retry unit. Valid values: `ms`, `s`.
  /// [value] Retry value.
  RouteSpecHttp2RouteRetryPolicyPerRetryTimeout({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory RouteSpecHttp2RouteRetryPolicyPerRetryTimeout.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteRetryPolicyPerRetryTimeout(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

