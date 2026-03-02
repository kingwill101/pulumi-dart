// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration {
  /// Unit of time. Valid values: `ms`, `s`.
  final pulumi.Input<String> unit;
  /// Number of time units. Minimum value of `0`.
  final pulumi.Input<int> value;

  /// Creates a new [VirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration].
  /// [unit] Unit of time. Valid values: `ms`, `s`.
  /// [value] Number of time units. Minimum value of `0`.
  VirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory VirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration(
      unit: (map['unit'] as String).input(),
      value: (map['value'] as int).input(),
    );
  }
}

