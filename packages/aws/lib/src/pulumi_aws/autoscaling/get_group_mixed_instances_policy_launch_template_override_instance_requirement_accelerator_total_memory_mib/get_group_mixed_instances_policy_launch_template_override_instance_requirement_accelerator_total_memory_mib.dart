// ignore_for_file: unused_element, unnecessary_cast

class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib {
  /// Maximum.
  final int max;

  /// Minimum.
  final int min;

  GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
