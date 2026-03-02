// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateInstanceRequirementsTotalLocalStorageGb {
  /// Maximum. May be a decimal number, e.g. `0.5`.
  final pulumi.Input<double>? max;
  /// Minimum. May be a decimal number, e.g. `0.5`.
  final pulumi.Input<double>? min;

  /// Creates a new [LaunchTemplateInstanceRequirementsTotalLocalStorageGb].
  /// [max] Maximum. May be a decimal number, e.g. `0.5`.
  /// [min] Minimum. May be a decimal number, e.g. `0.5`.
  LaunchTemplateInstanceRequirementsTotalLocalStorageGb({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory LaunchTemplateInstanceRequirementsTotalLocalStorageGb.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateInstanceRequirementsTotalLocalStorageGb(
      max: map['max'] == null ? null : (map['max'] as double).input(),
      min: map['min'] == null ? null : (map['min'] as double).input(),
    );
  }
}

