// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateInstanceRequirementsMemoryGibPerVcpu {
  /// Maximum. May be a decimal number, e.g. `0.5`.
  final pulumi.Input<double>? max;

  /// Minimum. May be a decimal number, e.g. `0.5`.
  final pulumi.Input<double>? min;

  /// Creates a new [LaunchTemplateInstanceRequirementsMemoryGibPerVcpu].
  /// [max] Maximum. May be a decimal number, e.g. `0.5`.
  /// [min] Minimum. May be a decimal number, e.g. `0.5`.
  LaunchTemplateInstanceRequirementsMemoryGibPerVcpu({this.max, this.min});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory LaunchTemplateInstanceRequirementsMemoryGibPerVcpu.fromMap(
    Map<String, dynamic> map,
  ) {
    return LaunchTemplateInstanceRequirementsMemoryGibPerVcpu(
      max: (() {
        final guardedValue = map['max'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      min: (() {
        final guardedValue = map['min'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
