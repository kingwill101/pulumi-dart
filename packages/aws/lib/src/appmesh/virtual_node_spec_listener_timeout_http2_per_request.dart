// ignore_for_file: unused_element, unnecessary_cast


class VirtualNodeSpecListenerTimeoutHttp2PerRequest {
  /// Unit of time. Valid values: `ms`, `s`.
  final String unit;
  /// Number of time units. Minimum value of `0`.
  final int value;

  /// Creates a new [VirtualNodeSpecListenerTimeoutHttp2PerRequest].
  /// [unit] Unit of time. Valid values: `ms`, `s`.
  /// [value] Number of time units. Minimum value of `0`.
  VirtualNodeSpecListenerTimeoutHttp2PerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory VirtualNodeSpecListenerTimeoutHttp2PerRequest.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeoutHttp2PerRequest(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

