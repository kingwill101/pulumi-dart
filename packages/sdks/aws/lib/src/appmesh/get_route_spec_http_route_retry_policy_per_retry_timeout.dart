// ignore_for_file: unused_element, unnecessary_cast


class GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout {
  final String unit;
  final int value;

  /// Creates a new [GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout].
  /// [unit] Required.
  /// [value] Required.
  GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteRetryPolicyPerRetryTimeout(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

