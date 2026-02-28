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
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorCount.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorCount(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
