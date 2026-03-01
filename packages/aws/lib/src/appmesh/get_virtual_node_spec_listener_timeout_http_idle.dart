// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNodeSpecListenerTimeoutHttpIdle {
  final String unit;
  final int value;

  /// Creates a new [GetVirtualNodeSpecListenerTimeoutHttpIdle].
  /// [unit] Required.
  /// [value] Required.
  GetVirtualNodeSpecListenerTimeoutHttpIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetVirtualNodeSpecListenerTimeoutHttpIdle.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutHttpIdle(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

