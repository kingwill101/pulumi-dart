// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNodeSpecListenerTimeoutHttpPerRequest {
  final String unit;
  final int value;

  /// Creates a new [GetVirtualNodeSpecListenerTimeoutHttpPerRequest].
  /// [unit] Required.
  /// [value] Required.
  GetVirtualNodeSpecListenerTimeoutHttpPerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetVirtualNodeSpecListenerTimeoutHttpPerRequest.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutHttpPerRequest(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

