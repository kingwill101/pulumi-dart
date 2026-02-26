// ignore_for_file: unused_element, unnecessary_cast

class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp {
  /// Maximum.
  final double max;

  /// Minimum.
  final double min;

  GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp(
      max: map['max'] as double,
      min: map['min'] as double,
    );
  }
}
