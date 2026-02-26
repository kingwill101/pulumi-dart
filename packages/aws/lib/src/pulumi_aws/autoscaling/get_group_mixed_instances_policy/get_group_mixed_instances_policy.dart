// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_group_mixed_instances_policy_instances_distribution/get_group_mixed_instances_policy_instances_distribution.dart';
import '../get_group_mixed_instances_policy_launch_template/get_group_mixed_instances_policy_launch_template.dart';

class GetGroupMixedInstancesPolicy {
  /// List of instances distribution objects.
  final List<GetGroupMixedInstancesPolicyInstancesDistribution>
      instancesDistributions;

  /// List of launch templates along with the overrides.
  final List<GetGroupMixedInstancesPolicyLaunchTemplate> launchTemplates;

  GetGroupMixedInstancesPolicy({
    required this.instancesDistributions,
    required this.launchTemplates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instancesDistributions'] = Input.encodeList<
        GetGroupMixedInstancesPolicyInstancesDistribution,
        Map<String, dynamic>>(instancesDistributions, (value) => value.toMap());
    map['launchTemplates'] = Input.encodeList<
        GetGroupMixedInstancesPolicyLaunchTemplate,
        Map<String, dynamic>>(launchTemplates, (value) => value.toMap());
    return map;
  }

  factory GetGroupMixedInstancesPolicy.fromMap(Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicy(
      instancesDistributions:
          Input.decodeList<GetGroupMixedInstancesPolicyInstancesDistribution>(
              map['instancesDistributions'],
              (value) =>
                  GetGroupMixedInstancesPolicyInstancesDistribution.fromMap(
                      (value as Map).cast<String, dynamic>())),
      launchTemplates:
          Input.decodeList<GetGroupMixedInstancesPolicyLaunchTemplate>(
              map['launchTemplates'],
              (value) => GetGroupMixedInstancesPolicyLaunchTemplate.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
