// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_mixed_instances_policy_instances_distribution.dart';
import 'group_mixed_instances_policy_launch_template.dart';

class GroupMixedInstancesPolicy {
  /// Nested argument containing settings on how to mix on-demand and Spot instances in the Auto Scaling group. Defined below.
  final pulumi.Input<GroupMixedInstancesPolicyInstancesDistribution>? instancesDistribution;
  /// Nested argument containing launch template settings along with the overrides to specify multiple instance types and weights. Defined below.
  final pulumi.Input<GroupMixedInstancesPolicyLaunchTemplate> launchTemplate;

  /// Creates a new [GroupMixedInstancesPolicy].
  /// [instancesDistribution] Nested argument containing settings on how to mix on-demand and Spot instances in the Auto Scaling group. Defined below.
  /// [launchTemplate] Nested argument containing launch template settings along with the overrides to specify multiple instance types and weights. Defined below.
  GroupMixedInstancesPolicy({
    this.instancesDistribution,
    required this.launchTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancesDistribution': ?pulumi.Input.mapOptionalInputValue<GroupMixedInstancesPolicyInstancesDistribution, Map<String, dynamic>>(instancesDistribution, (value) => value.toMap()),
      'launchTemplate': pulumi.Input.mapInputValue<GroupMixedInstancesPolicyLaunchTemplate, Map<String, dynamic>>(launchTemplate, (value) => value.toMap()),
    };
  }

  factory GroupMixedInstancesPolicy.fromMap(Map<String, dynamic> map) {
    return GroupMixedInstancesPolicy(
      instancesDistribution: (() { final guardedValue = map['instancesDistribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupMixedInstancesPolicyInstancesDistribution.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      launchTemplate: pulumi.Input.fromValue(GroupMixedInstancesPolicyLaunchTemplate.fromMap((map['launchTemplate']! as Map).cast<String, dynamic>())),
    );
  }
}

