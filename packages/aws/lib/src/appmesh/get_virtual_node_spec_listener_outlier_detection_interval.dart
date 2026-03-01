// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerOutlierDetectionInterval {
  final String unit;
  final int value;

  /// Creates a new [GetVirtualNodeSpecListenerOutlierDetectionInterval].
  /// [unit] Required.
  /// [value] Required.
  GetVirtualNodeSpecListenerOutlierDetectionInterval({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unit': unit, 'value': value};
  }

  factory GetVirtualNodeSpecListenerOutlierDetectionInterval.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecListenerOutlierDetectionInterval(
      unit: map['unit'] as String,
      value: map['value'] as int,
    );
  }
}
