// ignore_for_file: unused_element, unnecessary_cast

import '../group_mixed_instances_policy_instances_distribution/group_mixed_instances_policy_instances_distribution.dart';
import '../group_mixed_instances_policy_launch_template/group_mixed_instances_policy_launch_template.dart';

class GroupMixedInstancesPolicy {
  /// Nested argument containing settings on how to mix on-demand and Spot instances in the Auto Scaling group. Defined below.
  final GroupMixedInstancesPolicyInstancesDistribution? instancesDistribution;

  /// Nested argument containing launch template settings along with the overrides to specify multiple instance types and weights. Defined below.
  final GroupMixedInstancesPolicyLaunchTemplate launchTemplate;

  GroupMixedInstancesPolicy({
    this.instancesDistribution,
    required this.launchTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instancesDistributionValue = instancesDistribution;
    if (instancesDistributionValue != null) {
      map['instancesDistribution'] = instancesDistributionValue.toMap();
    }
    map['launchTemplate'] = launchTemplate.toMap();
    return map;
  }

  factory GroupMixedInstancesPolicy.fromMap(Map<String, dynamic> map) {
    return GroupMixedInstancesPolicy(
      instancesDistribution: map['instancesDistribution'] == null
          ? null
          : GroupMixedInstancesPolicyInstancesDistribution.fromMap(
              (map['instancesDistribution'] as Map).cast<String, dynamic>()),
      launchTemplate: GroupMixedInstancesPolicyLaunchTemplate.fromMap(
          (map['launchTemplate'] as Map).cast<String, dynamic>()),
    );
  }
}
