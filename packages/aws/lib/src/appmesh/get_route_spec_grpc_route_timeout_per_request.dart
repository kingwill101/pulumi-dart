// ignore_for_file: unused_element, unnecessary_cast


class GetRouteSpecGrpcRouteTimeoutPerRequest {
  final String unit;
  final int value;

  /// Creates a new [GetRouteSpecGrpcRouteTimeoutPerRequest].
  /// [unit] Required.
  /// [value] Required.
  GetRouteSpecGrpcRouteTimeoutPerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetRouteSpecGrpcRouteTimeoutPerRequest.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteTimeoutPerRequest(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

