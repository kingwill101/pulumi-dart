// ignore_for_file: unused_element, unnecessary_cast

class GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib {
  final int? max;
  final int? min;

  /// Creates a new [GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib].
  /// [max] Optional.
  /// [min] Optional.
  GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib({
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

  factory GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib.fromMap(
      Map<String, dynamic> map) {
    return GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsMemoryMib(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}
