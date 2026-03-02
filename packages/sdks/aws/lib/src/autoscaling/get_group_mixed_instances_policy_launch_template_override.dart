// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_mixed_instances_policy_launch_template_override_instance_requirement.dart';
import 'get_group_mixed_instances_policy_launch_template_override_launch_template_specification.dart';

class GetGroupMixedInstancesPolicyLaunchTemplateOverride {
  /// List of instance requirements objects.
  /// * `accelerator_count - List of objects describing the minimum and maximum number of accelerators for an instance type.
  final pulumi.Input<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement>> instanceRequirements;
  /// Overriding instance type.
  final pulumi.Input<String> instanceType;
  /// List of overriding launch template specification objects.
  final pulumi.Input<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification>> launchTemplateSpecifications;
  /// Number of capacity units, which gives the instance type a proportional weight to other instance types.
  final pulumi.Input<String> weightedCapacity;

  /// Creates a new [GetGroupMixedInstancesPolicyLaunchTemplateOverride].
  /// [instanceRequirements] List of instance requirements objects.
  /// [instanceType] Overriding instance type.
  /// [launchTemplateSpecifications] List of overriding launch template specification objects.
  /// [weightedCapacity] Number of capacity units, which gives the instance type a proportional weight to other instance types.
  GetGroupMixedInstancesPolicyLaunchTemplateOverride({
    required this.instanceRequirements,
    required this.instanceType,
    required this.launchTemplateSpecifications,
    required this.weightedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceRequirements': pulumi.Input.mapInputValue<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement>, List<Map<String, dynamic>>>(instanceRequirements, (value) => pulumi.Input.encodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceType': instanceType,
      'launchTemplateSpecifications': pulumi.Input.mapInputValue<List<GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification>, List<Map<String, dynamic>>>(launchTemplateSpecifications, (value) => pulumi.Input.encodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'weightedCapacity': weightedCapacity,
    };
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverride.fromMap(Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverride(
      instanceRequirements: (pulumi.Input.decodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement>(map['instanceRequirements']!, (value) => GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirement.fromMap((value as Map).cast<String, dynamic>()))).input(),
      instanceType: (map['instanceType'] as String).input(),
      launchTemplateSpecifications: (pulumi.Input.decodeList<GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification>(map['launchTemplateSpecifications']!, (value) => GetGroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      weightedCapacity: (map['weightedCapacity'] as String).input(),
    );
  }
}

