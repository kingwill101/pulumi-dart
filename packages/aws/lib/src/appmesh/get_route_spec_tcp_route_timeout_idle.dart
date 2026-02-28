// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecTcpRouteTimeoutIdle {
  final String unit;
  final int value;

  /// Creates a new [GetRouteSpecTcpRouteTimeoutIdle].
  /// [unit] Required.
  /// [value] Required.
  GetRouteSpecTcpRouteTimeoutIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory GetRouteSpecTcpRouteTimeoutIdle.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecTcpRouteTimeoutIdle(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
