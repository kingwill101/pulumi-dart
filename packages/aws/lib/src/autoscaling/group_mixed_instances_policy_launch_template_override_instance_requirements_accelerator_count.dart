// ignore_for_file: unused_element, unnecessary_cast

class GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount {
  final int? max;
  final int? min;

  /// Creates a new [GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount].
  /// [max] Optional.
  /// [min] Optional.
  GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount({
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

  factory GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount.fromMap(
      Map<String, dynamic> map) {
    return GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsAcceleratorCount(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}
