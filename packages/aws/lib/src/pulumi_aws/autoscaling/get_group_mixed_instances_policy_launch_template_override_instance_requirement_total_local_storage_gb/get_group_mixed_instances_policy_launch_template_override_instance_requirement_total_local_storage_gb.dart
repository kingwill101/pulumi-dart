// ignore_for_file: unused_element, unnecessary_cast

class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb {
  /// Maximum.
  final double max;

  /// Minimum.
  final double min;

  GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb(
      max: map['max'] as double,
      min: map['min'] as double,
    );
  }
}
