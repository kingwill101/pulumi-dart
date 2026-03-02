// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps {
  /// Maximum.
  final pulumi.Input<int>? max;
  /// Minimum.
  final pulumi.Input<int>? min;

  /// Creates a new [LaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps].
  /// [max] Maximum.
  /// [min] Minimum.
  LaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory LaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps(
      max: map['max'] == null ? null : (map['max'] as int).input(),
      min: map['min'] == null ? null : (map['min'] as int).input(),
    );
  }
}

