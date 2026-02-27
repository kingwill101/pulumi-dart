// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecListenerTimeoutHttp2Idle {
  /// Unit of time. Valid values: `ms`, `s`.
  final String unit;

  /// Number of time units. Minimum value of `0`.
  final int value;

  VirtualNodeSpecListenerTimeoutHttp2Idle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory VirtualNodeSpecListenerTimeoutHttp2Idle.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeoutHttp2Idle(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
