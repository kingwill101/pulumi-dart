// ignore_for_file: unused_element, unnecessary_cast

class GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount {
  final int? max;
  final int? min;

  /// Creates a new [GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount].
  /// [max] Optional.
  /// [min] Optional.
  GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount({
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

  factory GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount.fromMap(
      Map<String, dynamic> map) {
    return GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}
