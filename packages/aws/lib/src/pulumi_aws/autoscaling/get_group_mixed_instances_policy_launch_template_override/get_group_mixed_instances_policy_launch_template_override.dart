// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_group_mixed_instances_policy_launch_template_override_instance_requirement/get_group_mixed_instances_policy_launch_template_override_instance_requirement.dart';
import '../get_group_mixed_instances_policy_launch_template_override_launch_template_specification/get_group_mixed_instances_policy_launch_template_override_launch_template_specification.dart';

class GetGroupMixedInstancesPolicyLaunchTemplateOverride {
  /// List of instance requirements objects.
  /// * `accelerator_count - List of objects describing the minimum and maximum number of accelerators for an instance type.
  final List<
          GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement>
      instanceRequirements;

  /// Overriding instance type.
  final String instanceType;

  /// List of overriding launch template specification objects.
  final List<
          GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification>
      launchTemplateSpecifications;

  /// Number of capacity units, which gives the instance type a proportional weight to other instance types.
  final String weightedCapacity;

  GetGroupMixedInstancesPolicyLaunchTemplateOverride({
    required this.instanceRequirements,
    required this.instanceType,
    required this.launchTemplateSpecifications,
    required this.weightedCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceRequirements'] = pulumi.Input.encodeList<
        GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement,
        Map<String, dynamic>>(instanceRequirements, (value) => value.toMap());
    map['instanceType'] = instanceType;
    map['launchTemplateSpecifications'] = pulumi.Input.encodeList<
        GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification,
        Map<String,
            dynamic>>(launchTemplateSpecifications, (value) => value.toMap());
    map['weightedCapacity'] = weightedCapacity;
    return map;
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverride.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverride(
      instanceRequirements: pulumi.Input.decodeList<
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement>(
          map['instanceRequirements'],
          (value) =>
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement
                  .fromMap((value as Map).cast<String, dynamic>())),
      instanceType: map['instanceType'] as String,
      launchTemplateSpecifications: pulumi.Input.decodeList<
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification>(
          map['launchTemplateSpecifications'],
          (value) =>
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification
                  .fromMap((value as Map).cast<String, dynamic>())),
      weightedCapacity: map['weightedCapacity'] as String,
    );
  }
}
