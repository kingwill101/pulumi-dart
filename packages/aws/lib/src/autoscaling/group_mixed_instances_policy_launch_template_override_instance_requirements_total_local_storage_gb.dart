// ignore_for_file: unused_element, unnecessary_cast

class GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb {
  final double? max;
  final double? min;

  /// Creates a new [GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb].
  /// [max] Optional.
  /// [min] Optional.
  GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb({
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

  factory GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb.fromMap(
      Map<String, dynamic> map) {
    return GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsTotalLocalStorageGb(
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}
