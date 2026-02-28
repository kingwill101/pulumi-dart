// ignore_for_file: unused_element, unnecessary_cast


class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib {
  /// Maximum.
  final int max;
  /// Minimum.
  final int min;

  /// Creates a new [GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib].
  /// [max] Maximum.
  /// [min] Minimum.
  GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib.fromMap(Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}

