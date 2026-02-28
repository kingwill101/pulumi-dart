// ignore_for_file: unused_element, unnecessary_cast

import 'group_mixed_instances_policy_launch_template_override_instance_requirements.dart';
import 'group_mixed_instances_policy_launch_template_override_launch_template_specification.dart';

class GroupMixedInstancesPolicyLaunchTemplateOverride {
  /// Override the instance type in the Launch Template with instance types that satisfy the requirements.
  final GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements?
      instanceRequirements;

  /// Override the instance type in the Launch Template.
  final String? instanceType;

  /// Override the instance launch template specification in the Launch Template.
  final GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification?
      launchTemplateSpecification;

  /// Number of capacity units, which gives the instance type a proportional weight to other instance types.
  final String? weightedCapacity;

  /// Creates a new [GroupMixedInstancesPolicyLaunchTemplateOverride].
  /// [instanceRequirements] Override the instance type in the Launch Template with instance types that satisfy the requirements.
  /// [instanceType] Override the instance type in the Launch Template.
  /// [launchTemplateSpecification] Override the instance launch template specification in the Launch Template.
  /// [weightedCapacity] Number of capacity units, which gives the instance type a proportional weight to other instance types.
  GroupMixedInstancesPolicyLaunchTemplateOverride({
    this.instanceRequirements,
    this.instanceType,
    this.launchTemplateSpecification,
    this.weightedCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceRequirementsValue = instanceRequirements;
    if (instanceRequirementsValue != null) {
      map['instanceRequirements'] = instanceRequirementsValue.toMap();
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final launchTemplateSpecificationValue = launchTemplateSpecification;
    if (launchTemplateSpecificationValue != null) {
      map['launchTemplateSpecification'] =
          launchTemplateSpecificationValue.toMap();
    }
    final weightedCapacityValue = weightedCapacity;
    if (weightedCapacityValue != null) {
      map['weightedCapacity'] = weightedCapacityValue;
    }
    return map;
  }

  factory GroupMixedInstancesPolicyLaunchTemplateOverride.fromMap(
      Map<String, dynamic> map) {
    return GroupMixedInstancesPolicyLaunchTemplateOverride(
      instanceRequirements: map['instanceRequirements'] == null
          ? null
          : GroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirements
              .fromMap(
                  (map['instanceRequirements'] as Map).cast<String, dynamic>()),
      instanceType:
          map['instanceType'] == null ? null : map['instanceType'] as String,
      launchTemplateSpecification: map['launchTemplateSpecification'] == null
          ? null
          : GroupMixedInstancesPolicyLaunchTemplateOverrideLaunchTemplateSpecification
              .fromMap((map['launchTemplateSpecification'] as Map)
                  .cast<String, dynamic>()),
      weightedCapacity: map['weightedCapacity'] == null
          ? null
          : map['weightedCapacity'] as String,
    );
  }
}
