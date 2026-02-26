// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTimeoutHttpPerRequest {
  final String unit;
  final int value;

  GetVirtualNodeSpecListenerTimeoutHttpPerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory GetVirtualNodeSpecListenerTimeoutHttpPerRequest.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutHttpPerRequest(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
