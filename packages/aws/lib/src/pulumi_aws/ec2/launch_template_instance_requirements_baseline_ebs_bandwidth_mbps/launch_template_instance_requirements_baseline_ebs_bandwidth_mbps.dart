// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps {
  /// Maximum.
  final int? max;

  /// Minimum.
  final int? min;

  LaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps({
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

  factory LaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps.fromMap(
      Map<String, dynamic> map) {
    return LaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}
