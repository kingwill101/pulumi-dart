// ignore_for_file: unused_element, unnecessary_cast

class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkInterfaceCount {
  /// Maximum.
  final int max;

  /// Minimum.
  final int min;

  /// Creates a new [GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkInterfaceCount].
  /// [max] Maximum.
  /// [min] Minimum.
  GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkInterfaceCount({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkInterfaceCount.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkInterfaceCount(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
