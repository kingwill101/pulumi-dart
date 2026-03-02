// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration {
  final pulumi.Input<String> unit;
  final pulumi.Input<int> value;

  /// Creates a new [GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration].
  /// [unit] Required.
  /// [value] Required.
  GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration(
      unit: (map['unit'] as String).input(),
      value: (map['value'] as int).input(),
    );
  }
}

