// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerTimeoutGrpcIdle {
  final String unit;
  final int value;

  GetVirtualNodeSpecListenerTimeoutGrpcIdle({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory GetVirtualNodeSpecListenerTimeoutGrpcIdle.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutGrpcIdle(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
