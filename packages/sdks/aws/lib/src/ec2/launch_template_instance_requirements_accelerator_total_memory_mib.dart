// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib {
  /// Maximum.
  final pulumi.Input<int>? max;
  /// Minimum.
  final pulumi.Input<int>? min;

  /// Creates a new [LaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib].
  /// [max] Maximum.
  /// [min] Minimum.
  LaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory LaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateInstanceRequirementsAcceleratorTotalMemoryMib(
      max: map['max'] == null ? null : (map['max'] as int).input(),
      min: map['min'] == null ? null : (map['min'] as int).input(),
    );
  }
}

