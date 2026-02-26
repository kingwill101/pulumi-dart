// ignore_for_file: unused_element, unnecessary_cast

class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp {
  /// Maximum.
  final int max;

  /// Minimum.
  final int min;

  GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementBaselineEbsBandwidthMbp(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
