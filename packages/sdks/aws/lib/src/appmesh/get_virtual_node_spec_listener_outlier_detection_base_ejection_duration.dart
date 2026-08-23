// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration {
  /// Unit of time.
  final pulumi.Input<String> unit;
  /// Value for the JSON.
  final pulumi.Input<int> value;

  /// Creates a new [GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration].
  /// [unit] Unit of time.
  /// [value] Value for the JSON.
  const GetVirtualNodeSpecListenerOutlierDetectionBaseEjectionDuration({
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
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
