// ignore_for_file: unused_element, unnecessary_cast


class GetRouteSpecHttpRouteTimeoutPerRequest {
  final String unit;
  final int value;

  /// Creates a new [GetRouteSpecHttpRouteTimeoutPerRequest].
  /// [unit] Required.
  /// [value] Required.
  GetRouteSpecHttpRouteTimeoutPerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetRouteSpecHttpRouteTimeoutPerRequest.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteTimeoutPerRequest(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

