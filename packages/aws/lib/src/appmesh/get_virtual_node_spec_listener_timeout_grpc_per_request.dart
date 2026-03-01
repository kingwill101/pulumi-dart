// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTimeoutGrpcPerRequest {
  final String unit;
  final int value;

  /// Creates a new [GetVirtualNodeSpecListenerTimeoutGrpcPerRequest].
  /// [unit] Required.
  /// [value] Required.
  GetVirtualNodeSpecListenerTimeoutGrpcPerRequest({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': unit, 'value': value};
  }

  factory GetVirtualNodeSpecListenerTimeoutGrpcPerRequest.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecListenerTimeoutGrpcPerRequest(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
