// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount {
  /// Maximum. Set to `0` to exclude instance types with accelerators.
  final pulumi.Input<int>? max;

  /// Minimum.
  final pulumi.Input<int>? min;

  /// Creates a new [SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount].
  /// [max] Maximum. Set to `0` to exclude instance types with accelerators.
  /// [min] Minimum.
  SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount(
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
