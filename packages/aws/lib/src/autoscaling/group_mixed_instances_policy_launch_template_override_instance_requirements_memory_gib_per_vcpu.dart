// ignore_for_file: unused_element, unnecessary_cast

class GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu {
  final double? max;
  final double? min;

  /// Creates a new [GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu].
  /// [max] Optional.
  /// [min] Optional.
  GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxValue = max;
    if (maxValue != null) {
      map['max'] = maxValue;
    }
    final minValue = min;
    if (minValue != null) {
      map['min'] = minValue;
    }
    return map;
  }

  factory GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu.fromMap(
      Map<String, dynamic> map) {
    return GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryGibPerVcpu(
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}
