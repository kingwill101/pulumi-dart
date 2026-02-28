// ignore_for_file: unused_element, unnecessary_cast

class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementVcpuCount {
  /// Maximum.
  final int max;

  /// Minimum.
  final int min;

  /// Creates a new [GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementVcpuCount].
  /// [max] Maximum.
  /// [min] Minimum.
  GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementVcpuCount({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementVcpuCount.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementVcpuCount(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
