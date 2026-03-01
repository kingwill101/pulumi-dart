// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecHttp2RouteTimeoutPerRequest {
  final String unit;
  final int value;

  /// Creates a new [GetRouteSpecHttp2RouteTimeoutPerRequest].
  /// [unit] Required.
  /// [value] Required.
  GetRouteSpecHttp2RouteTimeoutPerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': unit, 'value': value};
  }

  factory GetRouteSpecHttp2RouteTimeoutPerRequest.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRouteSpecHttp2RouteTimeoutPerRequest(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
