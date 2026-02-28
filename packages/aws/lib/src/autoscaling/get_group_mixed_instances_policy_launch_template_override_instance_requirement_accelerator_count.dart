// ignore_for_file: unused_element, unnecessary_cast


class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorCount {
  /// Maximum.
  final int max;
  /// Minimum.
  final int min;

  /// Creates a new [GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorCount].
  /// [max] Maximum.
  /// [min] Minimum.
  GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorCount({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorCount.fromMap(Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorCount(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}

