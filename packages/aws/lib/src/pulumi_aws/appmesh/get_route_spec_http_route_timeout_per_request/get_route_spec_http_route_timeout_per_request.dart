// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecHttpRouteTimeoutPerRequest {
  final String unit;
  final int value;

  GetRouteSpecHttpRouteTimeoutPerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory GetRouteSpecHttpRouteTimeoutPerRequest.fromMap(
      Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteTimeoutPerRequest(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
