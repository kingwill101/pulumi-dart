// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration {
  final String unit;
  final int value;

  /// Creates a new [GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration].
  /// [unit] Required.
  /// [value] Required.
  GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': unit, 'value': value};
  }

  factory GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
