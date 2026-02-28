// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNodeSpecListenerTimeoutTcpIdle {
  final String unit;
  final int value;

  /// Creates a new [GetVirtualNodeSpecListenerTimeoutTcpIdle].
  /// [unit] Required.
  /// [value] Required.
  GetVirtualNodeSpecListenerTimeoutTcpIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetVirtualNodeSpecListenerTimeoutTcpIdle.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutTcpIdle(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

