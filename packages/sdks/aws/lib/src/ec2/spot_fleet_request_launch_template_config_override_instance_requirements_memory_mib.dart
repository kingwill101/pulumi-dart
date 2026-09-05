// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib {
  /// Maximum.
  final pulumi.Input<int?>? max;
  /// Minimum.
  final pulumi.Input<int?>? min;

  /// Creates a new [SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib].
  /// [max] Maximum.
  /// [min] Minimum.
  const SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib.fromMap(Map<String, dynamic> map) {
    return SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
