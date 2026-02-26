// ignore_for_file: unused_element, unnecessary_cast

class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib {
  /// Maximum.
  final int max;

  /// Minimum.
  final int min;

  GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
