// ignore_for_file: unused_element, unnecessary_cast


class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb {
  /// Maximum.
  final double max;
  /// Minimum.
  final double min;

  /// Creates a new [GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb].
  /// [max] Maximum.
  /// [min] Minimum.
  GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb.fromMap(Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementTotalLocalStorageGb(
      max: map['max'] as double,
      min: map['min'] as double,
    );
  }
}

