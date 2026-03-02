// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_mixed_instances_policy_instances_distribution.dart';
import 'get_group_mixed_instances_policy_launch_template.dart';

class GetGroupMixedInstancesPolicy {
  /// List of instances distribution objects.
  final pulumi.Input<List<GetGroupMixedInstancesPolicyInstancesDistribution>> instancesDistributions;
  /// List of launch templates along with the overrides.
  final pulumi.Input<List<GetGroupMixedInstancesPolicyLaunchTemplate>> launchTemplates;

  /// Creates a new [GetGroupMixedInstancesPolicy].
  /// [instancesDistributions] List of instances distribution objects.
  /// [launchTemplates] List of launch templates along with the overrides.
  GetGroupMixedInstancesPolicy({
    required this.instancesDistributions,
    required this.launchTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancesDistributions': pulumi.Input.mapInputValue<List<GetGroupMixedInstancesPolicyInstancesDistribution>, List<Map<String, dynamic>>>(instancesDistributions, (value) => pulumi.Input.encodeList<GetGroupMixedInstancesPolicyInstancesDistribution, Map<String, dynamic>>(value, (value) => value.toMap())),
      'launchTemplates': pulumi.Input.mapInputValue<List<GetGroupMixedInstancesPolicyLaunchTemplate>, List<Map<String, dynamic>>>(launchTemplates, (value) => pulumi.Input.encodeList<GetGroupMixedInstancesPolicyLaunchTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGroupMixedInstancesPolicy.fromMap(Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicy(
      instancesDistributions: (pulumi.Input.decodeList<GetGroupMixedInstancesPolicyInstancesDistribution>(map['instancesDistributions']!, (value) => GetGroupMixedInstancesPolicyInstancesDistribution.fromMap((value as Map).cast<String, dynamic>()))).input(),
      launchTemplates: (pulumi.Input.decodeList<GetGroupMixedInstancesPolicyLaunchTemplate>(map['launchTemplates']!, (value) => GetGroupMixedInstancesPolicyLaunchTemplate.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

