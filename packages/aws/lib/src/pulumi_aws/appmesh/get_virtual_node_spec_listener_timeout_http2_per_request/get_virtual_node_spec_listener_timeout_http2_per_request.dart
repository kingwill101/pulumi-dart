// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTimeoutHttp2PerRequest {
  final String unit;
  final int value;

  GetVirtualNodeSpecListenerTimeoutHttp2PerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory GetVirtualNodeSpecListenerTimeoutHttp2PerRequest.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutHttp2PerRequest(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
