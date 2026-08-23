// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_mixed_instances_policy_launch_template_override_instance_requirements.dart';
import 'group_mixed_instances_policy_launch_template_override_launch_template_specification.dart';

class GroupMixedInstancesPolicyLaunchTemplateOverride {
  /// Override the instance type in the Launch Template with instance types that satisfy the requirements.
  final pulumi.Input<GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements>? instanceRequirements;
  /// Override the instance type in the Launch Template.
  final pulumi.Input<String>? instanceType;
  /// Override the instance launch template specification in the Launch Template.
  final pulumi.Input<GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification>? launchTemplateSpecification;
  /// Number of capacity units, which gives the instance type a proportional weight to other instance types.
  final pulumi.Input<String>? weightedCapacity;

  /// Creates a new [GroupMixedInstancesPolicyLaunchTemplateOverride].
  /// [instanceRequirements] Override the instance type in the Launch Template with instance types that satisfy the requirements.
  /// [instanceType] Override the instance type in the Launch Template.
  /// [launchTemplateSpecification] Override the instance launch template specification in the Launch Template.
  /// [weightedCapacity] Number of capacity units, which gives the instance type a proportional weight to other instance types.
  const GroupMixedInstancesPolicyLaunchTemplateOverride({
    this.instanceRequirements,
    this.instanceType,
    this.launchTemplateSpecification,
    this.weightedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceRequirements': ?pulumi.Input.mapOptionalInputValue<GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements, Map<String, dynamic>>(instanceRequirements, (value) => value.toMap()),
      'instanceType': ?instanceType,
      'launchTemplateSpecification': ?pulumi.Input.mapOptionalInputValue<GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification, Map<String, dynamic>>(launchTemplateSpecification, (value) => value.toMap()),
      'weightedCapacity': ?weightedCapacity,
    };
  }

  factory GroupMixedInstancesPolicyLaunchTemplateOverride.fromMap(Map<String, dynamic> map) {
    return GroupMixedInstancesPolicyLaunchTemplateOverride(
      instanceRequirements: (() { final guardedValue = map['instanceRequirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplateSpecification: (() { final guardedValue = map['launchTemplateSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weightedCapacity: (() { final guardedValue = map['weightedCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
