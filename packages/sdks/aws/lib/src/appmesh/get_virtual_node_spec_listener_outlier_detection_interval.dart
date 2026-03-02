// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerOutlierDetectionInterval {
  final pulumi.Input<String> unit;
  final pulumi.Input<int> value;

  /// Creates a new [GetVirtualNodeSpecListenerOutlierDetectionInterval].
  /// [unit] Required.
  /// [value] Required.
  GetVirtualNodeSpecListenerOutlierDetectionInterval({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory GetVirtualNodeSpecListenerOutlierDetectionInterval.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerOutlierDetectionInterval(
      unit: (map['unit'] as String).input(),
      value: (map['value'] as int).input(),
    );
  }
}

