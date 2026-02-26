// ignore_for_file: unused_element, unnecessary_cast

class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus {
  /// Maximum.
  final double max;

  /// Minimum.
  final double min;

  GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus(
      max: map['max'] as double,
      min: map['min'] as double,
    );
  }
}
