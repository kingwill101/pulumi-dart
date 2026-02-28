// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTimeoutHttp2Idle {
  final String unit;
  final int value;

  /// Creates a new [GetVirtualNodeSpecListenerTimeoutHttp2Idle].
  /// [unit] Required.
  /// [value] Required.
  GetVirtualNodeSpecListenerTimeoutHttp2Idle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory GetVirtualNodeSpecListenerTimeoutHttp2Idle.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutHttp2Idle(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
