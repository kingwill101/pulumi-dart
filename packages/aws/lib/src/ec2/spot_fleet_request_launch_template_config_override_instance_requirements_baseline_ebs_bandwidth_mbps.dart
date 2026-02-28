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
    final map = <String, dynamic>{};
    final maxValue = max;
    if (maxValue != null) {
      map['max'] = maxValue;
    }
    final minValue = min;
    if (minValue != null) {
      map['min'] = minValue;
    }
    return map;
  }

  factory SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps.fromMap(
      Map<String, dynamic> map) {
    return SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}
