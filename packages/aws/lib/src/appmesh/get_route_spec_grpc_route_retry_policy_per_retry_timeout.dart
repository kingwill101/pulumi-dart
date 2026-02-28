// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout {
  final String unit;
  final int value;

  /// Creates a new [GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout].
  /// [unit] Required.
  /// [value] Required.
  GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout.fromMap(
      Map<String, dynamic> map) {
    return GetRouteSpecGrpcRouteRetryPolicyPerRetryTimeout(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
