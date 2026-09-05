// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecListenerOutlierDetectionInterval {
  /// Unit of time. Valid values: `ms`, `s`.
  final pulumi.Input<String> unit;
  /// Value for the JSON. Must be between 1 and 100 characters in length.
  final pulumi.Input<int> value;

  /// Creates a new [VirtualNodeSpecListenerOutlierDetectionInterval].
  /// [unit] Unit of time. Valid values: `ms`, `s`.
  /// [value] Value for the JSON. Must be between 1 and 100 characters in length.
  const VirtualNodeSpecListenerOutlierDetectionInterval({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory VirtualNodeSpecListenerOutlierDetectionInterval.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerOutlierDetectionInterval(
      unit: pulumi.Input.fromValue(map['unit'] as String),
      value: pulumi.Input.fromValue((map['value'] as num).toInt()),
    );
  }
}
