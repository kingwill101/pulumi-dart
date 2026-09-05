// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_instance_maintenance_policy.dart';
import 'get_group_launch_template.dart';
import 'get_group_mixed_instances_policy.dart';
import 'get_group_tag.dart';
import 'get_group_traffic_source.dart';
import 'get_group_warm_pool.dart';

/// Result data returned by getGroup.
class GetGroupResult {
  /// ARN of the Auto Scaling group.
  final String? arn;
  /// One or more Availability Zones for the group.
  final List<String>? availabilityZones;
  /// Amount of time, in seconds, after a scaling activity completes before another scaling activity can start.
  final int? defaultCooldown;
  /// Desired size of the group.
  final int? desiredCapacity;
  /// Unit of measurement for the value returned for `desiredCapacity`.
  final String? desiredCapacityType;
  /// List of metrics enabled for collection.
  final List<String>? enabledMetrics;
  /// Amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status of an EC2 instance that has come into service.
  final int? healthCheckGracePeriod;
  /// Service to use for the health checks. The valid values are EC2 and ELB.
  final String? healthCheckType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Instance maintenance policy for the group.
  final List<GetGroupInstanceMaintenancePolicy>? instanceMaintenancePolicies;
  /// Name of the associated launch configuration.
  final String? launchConfiguration;
  /// List of launch templates along with the overrides.
  final List<GetGroupLaunchTemplate>? launchTemplates;
  /// One or more load balancers associated with the group.
  final List<String>? loadBalancers;
  /// Maximum amount of time, in seconds, that an instance can be in service.
  final int? maxInstanceLifetime;
  /// Maximum size of the group.
  final int? maxSize;
  /// Minimum number of instances to maintain in the warm pool.
  final int? minSize;
  /// List of mixed instances policy objects for the group.
  final List<GetGroupMixedInstancesPolicy>? mixedInstancesPolicies;
  /// Name of the Auto Scaling Group.
  final String? name;
  /// Whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling when scaling in.
  final bool? newInstancesProtectedFromScaleIn;
  /// Name of the placement group into which to launch your instances, if any. For more information, see Placement Groups (http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html) in the EC2 User Guide.
  final String? placementGroup;
  /// Predicted capacity of the group.
  final int? predictedCapacity;
  final String? region;
  /// ARN of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf.
  final String? serviceLinkedRoleArn;
  /// Current state of the group when DeleteAutoScalingGroup is in progress.
  final String? status;
  /// List of processes suspended processes for the Auto Scaling Group.
  final List<String>? suspendedProcesses;
  /// List of tags for the group.
  final List<GetGroupTag>? tags;
  /// ARNs of the target groups for your load balancer.
  final List<String>? targetGroupArns;
  /// Termination policies for the group.
  final List<String>? terminationPolicies;
  /// Traffic sources.
  final List<GetGroupTrafficSource>? trafficSources;
  /// VPC ID for the group.
  final String? vpcZoneIdentifier;
  /// Current size of the warm pool.
  final int? warmPoolSize;
  /// List of warm pool configuration objects.
  final List<GetGroupWarmPool>? warmPools;

  /// Creates a new [GetGroupResult].
  /// [arn] ARN of the Auto Scaling group.
  /// [availabilityZones] One or more Availability Zones for the group.
  /// [defaultCooldown] Amount of time, in seconds, after a scaling activity completes before another scaling activity can start.
  /// [desiredCapacity] Desired size of the group.
  /// [desiredCapacityType] Unit of measurement for the value returned for `desiredCapacity`.
  /// [enabledMetrics] List of metrics enabled for collection.
  /// [healthCheckGracePeriod] Amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status of an EC2 instance that has come into service.
  /// [healthCheckType] Service to use for the health checks. The valid values are EC2 and ELB.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceMaintenancePolicies] Instance maintenance policy for the group.
  /// [launchConfiguration] Name of the associated launch configuration.
  /// [launchTemplates] List of launch templates along with the overrides.
  /// [loadBalancers] One or more load balancers associated with the group.
  /// [maxInstanceLifetime] Maximum amount of time, in seconds, that an instance can be in service.
  /// [maxSize] Maximum size of the group.
  /// [minSize] Minimum number of instances to maintain in the warm pool.
  /// [mixedInstancesPolicies] List of mixed instances policy objects for the group.
  /// [name] Name of the Auto Scaling Group.
  /// [newInstancesProtectedFromScaleIn] Whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling when scaling in.
  /// [placementGroup] Name of the placement group into which to launch your instances, if any. For more information, see Placement Groups (http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html) in the EC2 User Guide.
  /// [predictedCapacity] Predicted capacity of the group.
  /// [region] Optional.
  /// [serviceLinkedRoleArn] ARN of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf.
  /// [status] Current state of the group when DeleteAutoScalingGroup is in progress.
  /// [suspendedProcesses] List of processes suspended processes for the Auto Scaling Group.
  /// [tags] List of tags for the group.
  /// [targetGroupArns] ARNs of the target groups for your load balancer.
  /// [terminationPolicies] Termination policies for the group.
  /// [trafficSources] Traffic sources.
  /// [vpcZoneIdentifier] VPC ID for the group.
  /// [warmPoolSize] Current size of the warm pool.
  /// [warmPools] List of warm pool configuration objects.
  const GetGroupResult({
    this.arn,
    this.availabilityZones,
    this.defaultCooldown,
    this.desiredCapacity,
    this.desiredCapacityType,
    this.enabledMetrics,
    this.healthCheckGracePeriod,
    this.healthCheckType,
    this.id,
    this.instanceMaintenancePolicies,
    this.launchConfiguration,
    this.launchTemplates,
    this.loadBalancers,
    this.maxInstanceLifetime,
    this.maxSize,
    this.minSize,
    this.mixedInstancesPolicies,
    this.name,
    this.newInstancesProtectedFromScaleIn,
    this.placementGroup,
    this.predictedCapacity,
    this.region,
    this.serviceLinkedRoleArn,
    this.status,
    this.suspendedProcesses,
    this.tags,
    this.targetGroupArns,
    this.terminationPolicies,
    this.trafficSources,
    this.vpcZoneIdentifier,
    this.warmPoolSize,
    this.warmPools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZones': ?availabilityZones,
      'defaultCooldown': ?defaultCooldown,
      'desiredCapacity': ?desiredCapacity,
      'desiredCapacityType': ?desiredCapacityType,
      'enabledMetrics': ?enabledMetrics,
      'healthCheckGracePeriod': ?healthCheckGracePeriod,
      'healthCheckType': ?healthCheckType,
      'id': ?id,
      'instanceMaintenancePolicies': ?(() { final guardedValue = instanceMaintenancePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGroupInstanceMaintenancePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'launchConfiguration': ?launchConfiguration,
      'launchTemplates': ?(() { final guardedValue = launchTemplates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGroupLaunchTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'loadBalancers': ?loadBalancers,
      'maxInstanceLifetime': ?maxInstanceLifetime,
      'maxSize': ?maxSize,
      'minSize': ?minSize,
      'mixedInstancesPolicies': ?(() { final guardedValue = mixedInstancesPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGroupMixedInstancesPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'newInstancesProtectedFromScaleIn': ?newInstancesProtectedFromScaleIn,
      'placementGroup': ?placementGroup,
      'predictedCapacity': ?predictedCapacity,
      'region': ?region,
      'serviceLinkedRoleArn': ?serviceLinkedRoleArn,
      'status': ?status,
      'suspendedProcesses': ?suspendedProcesses,
      'tags': ?(() { final guardedValue = tags; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGroupTag, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'targetGroupArns': ?targetGroupArns,
      'terminationPolicies': ?terminationPolicies,
      'trafficSources': ?(() { final guardedValue = trafficSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGroupTrafficSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'vpcZoneIdentifier': ?vpcZoneIdentifier,
      'warmPoolSize': ?warmPoolSize,
      'warmPools': ?(() { final guardedValue = warmPools; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGroupWarmPool, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      defaultCooldown: (() { final guardedValue = map['defaultCooldown']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      desiredCapacity: (() { final guardedValue = map['desiredCapacity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      desiredCapacityType: (() { final guardedValue = map['desiredCapacityType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabledMetrics: (() { final guardedValue = map['enabledMetrics']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      healthCheckGracePeriod: (() { final guardedValue = map['healthCheckGracePeriod']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      healthCheckType: (() { final guardedValue = map['healthCheckType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceMaintenancePolicies: (() { final guardedValue = map['instanceMaintenancePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGroupInstanceMaintenancePolicy>(guardedValue, (value) => GetGroupInstanceMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      launchConfiguration: (() { final guardedValue = map['launchConfiguration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      launchTemplates: (() { final guardedValue = map['launchTemplates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGroupLaunchTemplate>(guardedValue, (value) => GetGroupLaunchTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
      loadBalancers: (() { final guardedValue = map['loadBalancers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      maxInstanceLifetime: (() { final guardedValue = map['maxInstanceLifetime']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxSize: (() { final guardedValue = map['maxSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      minSize: (() { final guardedValue = map['minSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      mixedInstancesPolicies: (() { final guardedValue = map['mixedInstancesPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGroupMixedInstancesPolicy>(guardedValue, (value) => GetGroupMixedInstancesPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      newInstancesProtectedFromScaleIn: (() { final guardedValue = map['newInstancesProtectedFromScaleIn']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      placementGroup: (() { final guardedValue = map['placementGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      predictedCapacity: (() { final guardedValue = map['predictedCapacity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceLinkedRoleArn: (() { final guardedValue = map['serviceLinkedRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      suspendedProcesses: (() { final guardedValue = map['suspendedProcesses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGroupTag>(guardedValue, (value) => GetGroupTag.fromMap((value as Map).cast<String, dynamic>())); })(),
      targetGroupArns: (() { final guardedValue = map['targetGroupArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      terminationPolicies: (() { final guardedValue = map['terminationPolicies']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      trafficSources: (() { final guardedValue = map['trafficSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGroupTrafficSource>(guardedValue, (value) => GetGroupTrafficSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      vpcZoneIdentifier: (() { final guardedValue = map['vpcZoneIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      warmPoolSize: (() { final guardedValue = map['warmPoolSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      warmPools: (() { final guardedValue = map['warmPools']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGroupWarmPool>(guardedValue, (value) => GetGroupWarmPool.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
