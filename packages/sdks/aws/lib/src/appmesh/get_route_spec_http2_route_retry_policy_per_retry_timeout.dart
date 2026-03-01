// ignore_for_file: unused_element, unnecessary_cast


class GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout {
  final String unit;
  final int value;

  /// Creates a new [GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout].
  /// [unit] Required.
  /// [value] Required.
  GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteRetryPolicyPerRetryTimeout(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

