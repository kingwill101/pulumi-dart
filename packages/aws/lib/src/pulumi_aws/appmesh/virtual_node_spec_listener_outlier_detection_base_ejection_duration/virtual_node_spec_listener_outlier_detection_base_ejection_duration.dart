// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration {
  /// Unit of time. Valid values: `ms`, `s`.
  final String unit;

  /// Number of time units. Minimum value of `0`.
  final int value;

  VirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['unit'] = unit;
    map['value'] = value;
    return map;
  }

  factory VirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
