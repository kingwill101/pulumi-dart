// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNodeSpecListenerTimeoutHttp2PerRequest {
  final String unit;
  final int value;

  /// Creates a new [GetVirtualNodeSpecListenerTimeoutHttp2PerRequest].
  /// [unit] Required.
  /// [value] Required.
  GetVirtualNodeSpecListenerTimeoutHttp2PerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetVirtualNodeSpecListenerTimeoutHttp2PerRequest.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutHttp2PerRequest(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}

