// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTimeoutHttpIdle {
  final String unit;
  final int value;

  GetVirtualNodeSpecListenerTimeoutHttpIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory GetVirtualNodeSpecListenerTimeoutHttpIdle.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutHttpIdle(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
