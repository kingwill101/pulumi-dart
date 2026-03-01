// ignore_for_file: unused_element, unnecessary_cast


class LaunchTemplateInstanceRequirementsBaselineEbsBandwidthMbps {
  /// Maximum.
  final int? max;
  /// Minimum.
  final int? min;

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
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}

