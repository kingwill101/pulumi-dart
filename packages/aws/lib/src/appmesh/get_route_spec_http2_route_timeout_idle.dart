// ignore_for_file: unused_element, unnecessary_cast


class GetRouteSpecHttp2RouteTimeoutIdle {
  final String unit;
  final int value;

  /// Creates a new [GetRouteSpecHttp2RouteTimeoutIdle].
  /// [unit] Required.
  /// [value] Required.
  GetRouteSpecHttp2RouteTimeoutIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetRouteSpecHttp2RouteTimeoutIdle.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteTimeoutIdle(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

