// ignore_for_file: unused_element, unnecessary_cast


class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp {
  /// Maximum.
  final int max;
  /// Minimum.
  final int min;

  /// Creates a new [GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp].
  /// [max] Maximum.
  /// [min] Minimum.
  GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp.fromMap(Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}

