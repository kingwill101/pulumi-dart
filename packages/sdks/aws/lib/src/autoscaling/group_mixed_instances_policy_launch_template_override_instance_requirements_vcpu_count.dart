// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount {
  final pulumi.Input<int?>? max;
  final pulumi.Input<int?>? min;

  /// Creates a new [GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount].
  /// [max] Optional.
  /// [min] Optional.
  const GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount.fromMap(Map<String, dynamic> map) {
    return GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementsVcpuCount(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
