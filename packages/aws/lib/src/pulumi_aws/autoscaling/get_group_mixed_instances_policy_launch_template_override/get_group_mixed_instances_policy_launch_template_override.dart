// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_group_mixed_instances_policy_launch_template_override_instance_requirement/get_group_mixed_instances_policy_launch_template_override_instance_requirement.dart';
import '../get_group_mixed_instances_policy_launch_template_override_launch_template_specification/get_group_mixed_instances_policy_launch_template_override_launch_template_specification.dart';

class GetGroupMixedInstancesPolicyLaunchTemplateOverride {
  /// List of instance requirements objects.
  /// * <span pulumi-lang-nodejs="`acceleratorCount " pulumi-lang-dotnet="`AcceleratorCount " pulumi-lang-go="`acceleratorCount " pulumi-lang-python="`accelerator_count " pulumi-lang-yaml="`acceleratorCount " pulumi-lang-java="`acceleratorCount ">`accelerator_count </span>- List of objects describing the minimum and maximum number of accelerators for an instance type.
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
    map['instanceRequirements'] = Input.encodeList<
        GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement,
        Map<String, dynamic>>(instanceRequirements, (value) => value.toMap());
    map['instanceType'] = instanceType;
    map['launchTemplateSpecifications'] = Input.encodeList<
        GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification,
        Map<String,
            dynamic>>(launchTemplateSpecifications, (value) => value.toMap());
    map['weightedCapacity'] = weightedCapacity;
    return map;
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverride.fromMap(
      Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverride(
      instanceRequirements: Input.decodeList<
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement>(
          map['instanceRequirements'],
          (value) =>
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement
                  .fromMap((value as Map).cast<String, dynamic>())),
      instanceType: map['instanceType'] as String,
      launchTemplateSpecifications: Input.decodeList<
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification>(
          map['launchTemplateSpecifications'],
          (value) =>
              GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification
                  .fromMap((value as Map).cast<String, dynamic>())),
      weightedCapacity: map['weightedCapacity'] as String,
    );
  }
}
