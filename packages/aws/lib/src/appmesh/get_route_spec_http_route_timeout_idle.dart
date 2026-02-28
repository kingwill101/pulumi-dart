// ignore_for_file: unused_element, unnecessary_cast


class GetRouteSpecHttpRouteTimeoutIdle {
  final String unit;
  final int value;

  /// Creates a new [GetRouteSpecHttpRouteTimeoutIdle].
  /// [unit] Required.
  /// [value] Required.
  GetRouteSpecHttpRouteTimeoutIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetRouteSpecHttpRouteTimeoutIdle.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteTimeoutIdle(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

