// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecGrpcRouteTimeoutIdle {
  final String unit;
  final int value;

  /// Creates a new [GetRouteSpecGrpcRouteTimeoutIdle].
  /// [unit] Required.
  /// [value] Required.
  GetRouteSpecGrpcRouteTimeoutIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory GetRouteSpecGrpcRouteTimeoutIdle.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteTimeoutIdle(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
