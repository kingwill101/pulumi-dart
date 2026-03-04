// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib {
  /// Maximum.
  final pulumi.Input<int> max;

  /// Minimum.
  final pulumi.Input<int> min;

  /// Creates a new [GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib].
  /// [max] Maximum.
  /// [min] Minimum.
  GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': max, 'min': min};
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementAcceleratorTotalMemoryMib(
      max: pulumi.Input.fromValue(map['max'] as int),
      min: pulumi.Input.fromValue(map['min'] as int),
    );
  }
}
