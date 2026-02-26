// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTimeoutTcpIdle {
  final String unit;
  final int value;

  GetVirtualNodeSpecListenerTimeoutTcpIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory GetVirtualNodeSpecListenerTimeoutTcpIdle.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutTcpIdle(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
