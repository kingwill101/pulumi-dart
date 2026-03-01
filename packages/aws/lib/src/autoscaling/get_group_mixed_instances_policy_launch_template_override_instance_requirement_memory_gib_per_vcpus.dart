// ignore_for_file: unused_element, unnecessary_cast

class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus {
  /// Maximum.
  final double max;

  /// Minimum.
  final double min;

  /// Creates a new [GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus].
  /// [max] Maximum.
  /// [min] Minimum.
  GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': max, 'min': min};
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryGibPerVcpus(
      max: map['max'] as double,
      min: map['min'] as double,
    );
  }
}
