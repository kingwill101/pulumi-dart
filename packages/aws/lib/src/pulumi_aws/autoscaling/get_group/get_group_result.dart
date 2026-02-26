// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_group_instance_maintenance_policy/get_group_instance_maintenance_policy.dart';
import '../get_group_launch_template/get_group_launch_template.dart';
import '../get_group_mixed_instances_policy/get_group_mixed_instances_policy.dart';
import '../get_group_tag/get_group_tag.dart';
import '../get_group_traffic_source/get_group_traffic_source.dart';
import '../get_group_warm_pool/get_group_warm_pool.dart';

/// Result data returned by getGroup.
class GetGroupResult {
  /// ARN of the Auto Scaling group.
  final String arn;

  /// One or more Availability Zones for the group.
  final List<String> availabilityZones;
  final int defaultCooldown;

  /// Desired size of the group.
  final int desiredCapacity;

  /// The unit of measurement for the value returned for <span pulumi-lang-nodejs="`desiredCapacity`" pulumi-lang-dotnet="`DesiredCapacity`" pulumi-lang-go="`desiredCapacity`" pulumi-lang-python="`desired_capacity`" pulumi-lang-yaml="`desiredCapacity`" pulumi-lang-java="`desiredCapacity`">`desired_capacity`</span>.
  final String desiredCapacityType;

  /// List of metrics enabled for collection.
  final List<String> enabledMetrics;

  /// The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status of an EC2 instance that has come into service.
  final int healthCheckGracePeriod;

  /// Service to use for the health checks. The valid values are EC2 and ELB.
  final String healthCheckType;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Instance maintenance policy for the group.
  final List<GetGroupInstanceMaintenancePolicy> instanceMaintenancePolicies;

  /// The name of the associated launch configuration.
  final String launchConfiguration;

  /// List of launch templates along with the overrides.
  final List<GetGroupLaunchTemplate> launchTemplates;

  /// One or more load balancers associated with the group.
  final List<String> loadBalancers;

  /// Maximum amount of time, in seconds, that an instance can be in service.
  final int maxInstanceLifetime;

  /// Maximum size of the group.
  final int maxSize;

  /// Minimum number of instances to maintain in the warm pool.
  final int minSize;

  /// List of mixed instances policy objects for the group.
  final List<GetGroupMixedInstancesPolicy> mixedInstancesPolicies;

  /// Name of the Auto Scaling Group.
  final String name;
  final bool newInstancesProtectedFromScaleIn;

  /// Name of the placement group into which to launch your instances, if any. For more information, see Placement Groups (http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html) in the Amazon Elastic Compute Cloud User Guide.
  final String placementGroup;

  /// Predicted capacity of the group.
  final int predictedCapacity;
  final String region;

  /// ARN of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf.
  final String serviceLinkedRoleArn;

  /// Current state of the group when DeleteAutoScalingGroup is in progress.
  final String status;

  /// List of processes suspended processes for the Auto Scaling Group.
  final List<String> suspendedProcesses;

  /// List of tags for the group.
  final List<GetGroupTag> tags;

  /// ARNs of the target groups for your load balancer.
  final List<String> targetGroupArns;

  /// The termination policies for the group.
  final List<String> terminationPolicies;

  /// Traffic sources.
  final List<GetGroupTrafficSource> trafficSources;

  /// VPC ID for the group.
  final String vpcZoneIdentifier;

  /// Current size of the warm pool.
  final int warmPoolSize;

  /// List of warm pool configuration objects.
  final List<GetGroupWarmPool> warmPools;

  GetGroupResult({
    required this.arn,
    required this.availabilityZones,
    required this.defaultCooldown,
    required this.desiredCapacity,
    required this.desiredCapacityType,
    required this.enabledMetrics,
    required this.healthCheckGracePeriod,
    required this.healthCheckType,
    required this.id,
    required this.instanceMaintenancePolicies,
    required this.launchConfiguration,
    required this.launchTemplates,
    required this.loadBalancers,
    required this.maxInstanceLifetime,
    required this.maxSize,
    required this.minSize,
    required this.mixedInstancesPolicies,
    required this.name,
    required this.newInstancesProtectedFromScaleIn,
    required this.placementGroup,
    required this.predictedCapacity,
    required this.region,
    required this.serviceLinkedRoleArn,
    required this.status,
    required this.suspendedProcesses,
    required this.tags,
    required this.targetGroupArns,
    required this.terminationPolicies,
    required this.trafficSources,
    required this.vpcZoneIdentifier,
    required this.warmPoolSize,
    required this.warmPools,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['availabilityZones'] = availabilityZones;
    map['defaultCooldown'] = defaultCooldown;
    map['desiredCapacity'] = desiredCapacity;
    map['desiredCapacityType'] = desiredCapacityType;
    map['enabledMetrics'] = enabledMetrics;
    map['healthCheckGracePeriod'] = healthCheckGracePeriod;
    map['healthCheckType'] = healthCheckType;
    map['id'] = id;
    map['instanceMaintenancePolicies'] = Input.encodeList<
            GetGroupInstanceMaintenancePolicy, Map<String, dynamic>>(
        instanceMaintenancePolicies, (value) => value.toMap());
    map['launchConfiguration'] = launchConfiguration;
    map['launchTemplates'] =
        Input.encodeList<GetGroupLaunchTemplate, Map<String, dynamic>>(
            launchTemplates, (value) => value.toMap());
    map['loadBalancers'] = loadBalancers;
    map['maxInstanceLifetime'] = maxInstanceLifetime;
    map['maxSize'] = maxSize;
    map['minSize'] = minSize;
    map['mixedInstancesPolicies'] =
        Input.encodeList<GetGroupMixedInstancesPolicy, Map<String, dynamic>>(
            mixedInstancesPolicies, (value) => value.toMap());
    map['name'] = name;
    map['newInstancesProtectedFromScaleIn'] = newInstancesProtectedFromScaleIn;
    map['placementGroup'] = placementGroup;
    map['predictedCapacity'] = predictedCapacity;
    map['region'] = region;
    map['serviceLinkedRoleArn'] = serviceLinkedRoleArn;
    map['status'] = status;
    map['suspendedProcesses'] = suspendedProcesses;
    map['tags'] = Input.encodeList<GetGroupTag, Map<String, dynamic>>(
        tags, (value) => value.toMap());
    map['targetGroupArns'] = targetGroupArns;
    map['terminationPolicies'] = terminationPolicies;
    map['trafficSources'] =
        Input.encodeList<GetGroupTrafficSource, Map<String, dynamic>>(
            trafficSources, (value) => value.toMap());
    map['vpcZoneIdentifier'] = vpcZoneIdentifier;
    map['warmPoolSize'] = warmPoolSize;
    map['warmPools'] = Input.encodeList<GetGroupWarmPool, Map<String, dynamic>>(
        warmPools, (value) => value.toMap());
    return map;
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      arn: map['arn'] as String,
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      defaultCooldown: map['defaultCooldown'] as int,
      desiredCapacity: map['desiredCapacity'] as int,
      desiredCapacityType: map['desiredCapacityType'] as String,
      enabledMetrics: (map['enabledMetrics'] as List).cast<String>(),
      healthCheckGracePeriod: map['healthCheckGracePeriod'] as int,
      healthCheckType: map['healthCheckType'] as String,
      id: map['id'] as String,
      instanceMaintenancePolicies:
          Input.decodeList<GetGroupInstanceMaintenancePolicy>(
              map['instanceMaintenancePolicies'],
              (value) => GetGroupInstanceMaintenancePolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      launchConfiguration: map['launchConfiguration'] as String,
      launchTemplates: Input.decodeList<GetGroupLaunchTemplate>(
          map['launchTemplates'],
          (value) => GetGroupLaunchTemplate.fromMap(
              (value as Map).cast<String, dynamic>())),
      loadBalancers: (map['loadBalancers'] as List).cast<String>(),
      maxInstanceLifetime: map['maxInstanceLifetime'] as int,
      maxSize: map['maxSize'] as int,
      minSize: map['minSize'] as int,
      mixedInstancesPolicies: Input.decodeList<GetGroupMixedInstancesPolicy>(
          map['mixedInstancesPolicies'],
          (value) => GetGroupMixedInstancesPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      newInstancesProtectedFromScaleIn:
          map['newInstancesProtectedFromScaleIn'] as bool,
      placementGroup: map['placementGroup'] as String,
      predictedCapacity: map['predictedCapacity'] as int,
      region: map['region'] as String,
      serviceLinkedRoleArn: map['serviceLinkedRoleArn'] as String,
      status: map['status'] as String,
      suspendedProcesses: (map['suspendedProcesses'] as List).cast<String>(),
      tags: Input.decodeList<GetGroupTag>(
          map['tags'],
          (value) =>
              GetGroupTag.fromMap((value as Map).cast<String, dynamic>())),
      targetGroupArns: (map['targetGroupArns'] as List).cast<String>(),
      terminationPolicies: (map['terminationPolicies'] as List).cast<String>(),
      trafficSources: Input.decodeList<GetGroupTrafficSource>(
          map['trafficSources'],
          (value) => GetGroupTrafficSource.fromMap(
              (value as Map).cast<String, dynamic>())),
      vpcZoneIdentifier: map['vpcZoneIdentifier'] as String,
      warmPoolSize: map['warmPoolSize'] as int,
      warmPools: Input.decodeList<GetGroupWarmPool>(
          map['warmPools'],
          (value) =>
              GetGroupWarmPool.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
