// ignore_for_file: unused_element, unnecessary_cast


class SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps {
  /// Maximum.
  final int? max;
  /// Minimum.
  final int? min;

  /// Creates a new [SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps].
  /// [max] Maximum.
  /// [min] Minimum.
  SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps.fromMap(Map<String, dynamic> map) {
    return SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}

