// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount {
  /// Maximum. Set to `0` to exclude instance types with accelerators.
  final pulumi.Input<int>? max;

  /// Minimum.
  final pulumi.Input<int>? min;

  /// Creates a new [FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount].
  /// [max] Maximum. Set to `0` to exclude instance types with accelerators.
  /// [min] Minimum.
  FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount.fromMap(
    Map<String, dynamic> map,
  ) {
    return FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount(
      max: (() {
        final guardedValue = map['max'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      min: (() {
        final guardedValue = map['min'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
