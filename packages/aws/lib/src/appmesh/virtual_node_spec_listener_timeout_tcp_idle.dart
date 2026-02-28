// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecListenerTimeoutTcpIdle {
  /// Unit of time. Valid values: `ms`, `s`.
  final String unit;

  /// Number of time units. Minimum value of `0`.
  final int value;

  /// Creates a new [VirtualNodeSpecListenerTimeoutTcpIdle].
  /// [unit] Unit of time. Valid values: `ms`, `s`.
  /// [value] Number of time units. Minimum value of `0`.
  VirtualNodeSpecListenerTimeoutTcpIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory VirtualNodeSpecListenerTimeoutTcpIdle.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeoutTcpIdle(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
