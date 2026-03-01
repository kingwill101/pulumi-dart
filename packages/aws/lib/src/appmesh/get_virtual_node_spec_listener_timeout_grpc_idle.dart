// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTimeoutGrpcIdle {
  final String unit;
  final int value;

  /// Creates a new [GetVirtualNodeSpecListenerTimeoutGrpcIdle].
  /// [unit] Required.
  /// [value] Required.
  GetVirtualNodeSpecListenerTimeoutGrpcIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': unit, 'value': value};
  }

  factory GetVirtualNodeSpecListenerTimeoutGrpcIdle.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecListenerTimeoutGrpcIdle(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
