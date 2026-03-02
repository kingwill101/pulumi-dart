// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_availability_zone_distribution.dart';
import 'group_capacity_reservation_specification.dart';
import 'group_initial_lifecycle_hook.dart';
import 'group_instance_maintenance_policy.dart';
import 'group_instance_refresh.dart';
import 'group_launch_template.dart';
import 'group_mixed_instances_policy.dart';
import 'group_tag.dart';
import 'group_traffic_source.dart';
import 'group_warm_pool.dart';
import 'metric.dart';

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// ARN for this Auto Scaling Group
  final pulumi.Input<String>? arn;
  /// The instance capacity distribution across Availability Zones. See Availability Zone Distribution below for more details.
  final pulumi.Input<GroupAvailabilityZoneDistribution>? availabilityZoneDistribution;
  /// A list of Availability Zones where instances in the Auto Scaling group can be created. Used for launching into the default VPC subnet in each Availability Zone when not using the `vpc_zone_identifier` attribute, or for attaching a network interface when an existing network interface ID is specified in a launch template. Conflicts with `vpc_zone_identifier`.
  final pulumi.Input<List<String>>? availabilityZones;
  /// Whether capacity rebalance is enabled. Otherwise, capacity rebalance is disabled.
  final pulumi.Input<bool>? capacityRebalance;
  /// The capacity reservation specification for the Auto Scaling group allows you to prioritize launching into On-Demand Capacity Reservations. See Capacity Reservation Specification below for more details.
  final pulumi.Input<GroupCapacityReservationSpecification>? capacityReservationSpecification;
  /// Reserved.
  final pulumi.Input<String>? context;
  /// Amount of time, in seconds, after a scaling activity completes before another scaling activity can start.
  final pulumi.Input<int>? defaultCooldown;
  /// Amount of time, in seconds, until a newly launched instance can contribute to the Amazon CloudWatch metrics. This delay lets an instance finish initializing before Amazon EC2 Auto Scaling aggregates instance metrics, resulting in more reliable usage data. Set this value equal to the amount of time that it takes for resource consumption to become stable after an instance reaches the InService state. (See [Set the default instance warmup for an Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html))
  final pulumi.Input<int>? defaultInstanceWarmup;
  /// Number of Amazon EC2 instances that
  /// should be running in the group. (See also Waiting for
  /// Capacity below.)
  final pulumi.Input<int>? desiredCapacity;
  /// The unit of measurement for the value specified for `desired_capacity`. Supported for attribute-based instance type selection only. Valid values: `"units"`, `"vcpu"`, `"memory-mib"`.
  final pulumi.Input<String>? desiredCapacityType;
  /// List of metrics to collect. The allowed values are defined by the [underlying AWS API](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html).
  final pulumi.Input<List<Metric>>? enabledMetrics;
  /// Allows deleting the Auto Scaling Group without waiting
  /// for all instances in the pool to terminate. You can force an Auto Scaling Group to delete
  /// even if it's in the process of scaling a resource. Normally, this provider
  /// drains all the instances before deleting the group. This bypasses that
  /// behavior and potentially leaves resources dangling.
  final pulumi.Input<bool>? forceDelete;
  /// Allows deleting the Auto Scaling Group without waiting for all instances in the warm pool to terminate.
  final pulumi.Input<bool>? forceDeleteWarmPool;
  /// Time (in seconds) after instance comes into service before checking health.
  final pulumi.Input<int>? healthCheckGracePeriod;
  /// "EC2" or "ELB". Controls how health checking is done.
  final pulumi.Input<String>? healthCheckType;
  /// Whether to ignore failed [Auto Scaling scaling activities](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-verify-scaling-activity.html) while waiting for capacity. The default is `false` -- failed scaling activities cause errors to be returned.
  final pulumi.Input<bool>? ignoreFailedScalingActivities;
  /// One or more
  /// [Lifecycle Hooks](http://docs.aws.amazon.com/autoscaling/latest/userguide/lifecycle-hooks.html)
  /// to attach to the Auto Scaling Group **before** instances are launched. The
  /// syntax is exactly the same as the separate
  /// `aws.autoscaling.LifecycleHook`
  /// resource, without the `autoscaling_group_name` attribute. Please note that this will only work when creating
  /// a new Auto Scaling Group. For all other use-cases, please use `aws.autoscaling.LifecycleHook` resource.
  final pulumi.Input<List<GroupInitialLifecycleHook>>? initialLifecycleHooks;
  /// If this block is configured, add a instance maintenance policy to the specified Auto Scaling group. Defined below.
  final pulumi.Input<GroupInstanceMaintenancePolicy>? instanceMaintenancePolicy;
  /// If this block is configured, start an
  /// [Instance Refresh](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
  /// when this Auto Scaling Group is updated. Defined below.
  final pulumi.Input<GroupInstanceRefresh>? instanceRefresh;
  /// Name of the launch configuration to use.
  final pulumi.Input<String>? launchConfiguration;
  /// Nested argument with Launch template specification to use to launch instances. See Launch Template below for more details.
  final pulumi.Input<GroupLaunchTemplate>? launchTemplate;
  /// List of elastic load balancer names to add to the autoscaling
  /// group names. Only valid for classic load balancers. For ALBs, use `target_group_arns` instead. To remove all load balancer attachments an empty list should be specified.
  final pulumi.Input<List<String>>? loadBalancers;
  /// Maximum amount of time, in seconds, that an instance can be in service, values must be either equal to 0 or between 86400 and 31536000 seconds.
  final pulumi.Input<int>? maxInstanceLifetime;
  /// Maximum size of the Auto Scaling Group.
  final pulumi.Input<int>? maxSize;
  /// Granularity to associate with the metrics to collect. The only valid value is `1Minute`. Default is `1Minute`.
  final pulumi.Input<String>? metricsGranularity;
  /// Setting this causes Pulumi to wait for
  /// this number of instances from this Auto Scaling Group to show up healthy in the
  /// ELB only on creation. Updates will not wait on ELB instance number changes.
  /// (See also Waiting for Capacity below.)
  final pulumi.Input<int>? minElbCapacity;
  /// Minimum size of the Auto Scaling Group.
  /// (See also Waiting for Capacity below.)
  final pulumi.Input<int>? minSize;
  /// Configuration block containing settings to define launch targets for Auto Scaling groups. See Mixed Instances Policy below for more details.
  final pulumi.Input<GroupMixedInstancesPolicy>? mixedInstancesPolicy;
  /// Name of the Auto Scaling Group. By default generated by Pulumi. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Name of the placement group into which you'll launch your instances, if any.
  final pulumi.Input<String>? placementGroup;
  /// Predicted capacity of the group.
  final pulumi.Input<int>? predictedCapacity;
  /// Whether newly launched instances
  /// are automatically protected from termination by Amazon EC2 Auto Scaling when
  /// scaling in. For more information about preventing instances from terminating
  /// on scale in, see [Using instance scale-in protection](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html)
  /// in the Amazon EC2 Auto Scaling User Guide.
  final pulumi.Input<bool>? protectFromScaleIn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the service-linked role that the ASG will use to call other AWS services
  final pulumi.Input<String>? serviceLinkedRoleArn;
  /// List of processes to suspend for the Auto Scaling Group. The allowed values are `Launch`, `Terminate`, `HealthCheck`, `ReplaceUnhealthy`, `AZRebalance`, `AlarmNotification`, `ScheduledActions`, `AddToLoadBalancer`, `InstanceRefresh`.
  /// Note that if you suspend either the `Launch` or `Terminate` process types, it can prevent your Auto Scaling Group from functioning properly.
  final pulumi.Input<List<String>>? suspendedProcesses;
  /// Configuration block(s) containing resource tags. See Tag below for more details.
  final pulumi.Input<List<GroupTag>>? tags;
  /// Set of `aws.lb.TargetGroup` ARNs, for use with Application or Network Load Balancing. To remove all target group attachments an empty list should be specified.
  final pulumi.Input<List<String>>? targetGroupArns;
  /// List of policies to decide how the instances in the Auto Scaling Group should be terminated. The allowed values are `OldestInstance`, `NewestInstance`, `OldestLaunchConfiguration`, `ClosestToNextInstanceHour`, `OldestLaunchTemplate`, `AllocationStrategy`, `Default`. Additionally, the ARN of a Lambda function can be specified for custom termination policies.
  final pulumi.Input<List<String>>? terminationPolicies;
  /// Attaches one or more traffic sources to the specified Auto Scaling group.
  final pulumi.Input<List<GroupTrafficSource>>? trafficSources;
  /// List of subnet IDs to launch resources in. Subnets automatically determine which availability zones the group will reside. Conflicts with `availability_zones`.
  final pulumi.Input<List<String>>? vpcZoneIdentifiers;
  /// Maximum
  /// [duration](https://golang.org/pkg/time/#ParseDuration) that the provider should
  /// wait for ASG instances to be healthy before timing out. (See also Waiting
  /// for Capacity below.) Setting this to "0" causes
  /// the provider to skip all Capacity Waiting behavior.
  final pulumi.Input<String>? waitForCapacityTimeout;
  /// Setting this will cause Pulumi to wait
  /// for exactly this number of healthy instances from this Auto Scaling Group in
  /// all attached load balancers on both create and update operations. (Takes
  /// precedence over `min_elb_capacity` behavior.)
  /// (See also Waiting for Capacity below.)
  final pulumi.Input<int>? waitForElbCapacity;
  /// If this block is configured, add a [Warm Pool](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html)
  /// to the specified Auto Scaling group. Defined below
  final pulumi.Input<GroupWarmPool>? warmPool;
  /// Current size of the warm pool.
  final pulumi.Input<int>? warmPoolSize;

  /// Creates a new [GroupState].
  /// [arn] ARN for this Auto Scaling Group
  /// [availabilityZoneDistribution] The instance capacity distribution across Availability Zones. See Availability Zone Distribution below for more details.
  /// [availabilityZones] A list of Availability Zones where instances in the Auto Scaling group can be created. Used for launching into the default VPC subnet in each Availability Zone when not using the `vpc_zone_identifier` attribute, or for attaching a network interface when an existing network interface ID is specified in a launch template. Conflicts with `vpc_zone_identifier`.
  /// [capacityRebalance] Whether capacity rebalance is enabled. Otherwise, capacity rebalance is disabled.
  /// [capacityReservationSpecification] The capacity reservation specification for the Auto Scaling group allows you to prioritize launching into On-Demand Capacity Reservations. See Capacity Reservation Specification below for more details.
  /// [context] Reserved.
  /// [defaultCooldown] Amount of time, in seconds, after a scaling activity completes before another scaling activity can start.
  /// [defaultInstanceWarmup] Amount of time, in seconds, until a newly launched instance can contribute to the Amazon CloudWatch metrics. This delay lets an instance finish initializing before Amazon EC2 Auto Scaling aggregates instance metrics, resulting in more reliable usage data. Set this value equal to the amount of time that it takes for resource consumption to become stable after an instance reaches the InService state. (See [Set the default instance warmup for an Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html))
  /// [desiredCapacity] Number of Amazon EC2 instances that
  /// [desiredCapacityType] The unit of measurement for the value specified for `desired_capacity`. Supported for attribute-based instance type selection only. Valid values: `"units"`, `"vcpu"`, `"memory-mib"`.
  /// [enabledMetrics] List of metrics to collect. The allowed values are defined by the [underlying AWS API](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html).
  /// [forceDelete] Allows deleting the Auto Scaling Group without waiting
  /// [forceDeleteWarmPool] Allows deleting the Auto Scaling Group without waiting for all instances in the warm pool to terminate.
  /// [healthCheckGracePeriod] Time (in seconds) after instance comes into service before checking health.
  /// [healthCheckType] "EC2" or "ELB". Controls how health checking is done.
  /// [ignoreFailedScalingActivities] Whether to ignore failed [Auto Scaling scaling activities](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-verify-scaling-activity.html) while waiting for capacity. The default is `false` -- failed scaling activities cause errors to be returned.
  /// [initialLifecycleHooks] One or more
  /// [instanceMaintenancePolicy] If this block is configured, add a instance maintenance policy to the specified Auto Scaling group. Defined below.
  /// [instanceRefresh] If this block is configured, start an
  /// [launchConfiguration] Name of the launch configuration to use.
  /// [launchTemplate] Nested argument with Launch template specification to use to launch instances. See Launch Template below for more details.
  /// [loadBalancers] List of elastic load balancer names to add to the autoscaling
  /// [maxInstanceLifetime] Maximum amount of time, in seconds, that an instance can be in service, values must be either equal to 0 or between 86400 and 31536000 seconds.
  /// [maxSize] Maximum size of the Auto Scaling Group.
  /// [metricsGranularity] Granularity to associate with the metrics to collect. The only valid value is `1Minute`. Default is `1Minute`.
  /// [minElbCapacity] Setting this causes Pulumi to wait for
  /// [minSize] Minimum size of the Auto Scaling Group.
  /// [mixedInstancesPolicy] Configuration block containing settings to define launch targets for Auto Scaling groups. See Mixed Instances Policy below for more details.
  /// [name] Name of the Auto Scaling Group. By default generated by Pulumi. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified
  /// [placementGroup] Name of the placement group into which you'll launch your instances, if any.
  /// [predictedCapacity] Predicted capacity of the group.
  /// [protectFromScaleIn] Whether newly launched instances
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceLinkedRoleArn] ARN of the service-linked role that the ASG will use to call other AWS services
  /// [suspendedProcesses] List of processes to suspend for the Auto Scaling Group. The allowed values are `Launch`, `Terminate`, `HealthCheck`, `ReplaceUnhealthy`, `AZRebalance`, `AlarmNotification`, `ScheduledActions`, `AddToLoadBalancer`, `InstanceRefresh`.
  /// [tags] Configuration block(s) containing resource tags. See Tag below for more details.
  /// [targetGroupArns] Set of `aws.lb.TargetGroup` ARNs, for use with Application or Network Load Balancing. To remove all target group attachments an empty list should be specified.
  /// [terminationPolicies] List of policies to decide how the instances in the Auto Scaling Group should be terminated. The allowed values are `OldestInstance`, `NewestInstance`, `OldestLaunchConfiguration`, `ClosestToNextInstanceHour`, `OldestLaunchTemplate`, `AllocationStrategy`, `Default`. Additionally, the ARN of a Lambda function can be specified for custom termination policies.
  /// [trafficSources] Attaches one or more traffic sources to the specified Auto Scaling group.
  /// [vpcZoneIdentifiers] List of subnet IDs to launch resources in. Subnets automatically determine which availability zones the group will reside. Conflicts with `availability_zones`.
  /// [waitForCapacityTimeout] Maximum
  /// [waitForElbCapacity] Setting this will cause Pulumi to wait
  /// [warmPool] If this block is configured, add a [Warm Pool](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html)
  /// [warmPoolSize] Current size of the warm pool.
  GroupState({
    this.arn,
    this.availabilityZoneDistribution,
    this.availabilityZones,
    this.capacityRebalance,
    this.capacityReservationSpecification,
    this.context,
    this.defaultCooldown,
    this.defaultInstanceWarmup,
    this.desiredCapacity,
    this.desiredCapacityType,
    this.enabledMetrics,
    this.forceDelete,
    this.forceDeleteWarmPool,
    this.healthCheckGracePeriod,
    this.healthCheckType,
    this.ignoreFailedScalingActivities,
    this.initialLifecycleHooks,
    this.instanceMaintenancePolicy,
    this.instanceRefresh,
    this.launchConfiguration,
    this.launchTemplate,
    this.loadBalancers,
    this.maxInstanceLifetime,
    this.maxSize,
    this.metricsGranularity,
    this.minElbCapacity,
    this.minSize,
    this.mixedInstancesPolicy,
    this.name,
    this.namePrefix,
    this.placementGroup,
    this.predictedCapacity,
    this.protectFromScaleIn,
    this.region,
    this.serviceLinkedRoleArn,
    this.suspendedProcesses,
    this.tags,
    this.targetGroupArns,
    this.terminationPolicies,
    this.trafficSources,
    this.vpcZoneIdentifiers,
    this.waitForCapacityTimeout,
    this.waitForElbCapacity,
    this.warmPool,
    this.warmPoolSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZoneDistribution': ?pulumi.Input.mapOptionalInputValue<GroupAvailabilityZoneDistribution, Map<String, dynamic>>(availabilityZoneDistribution, (value) => value.toMap()),
      'availabilityZones': ?availabilityZones,
      'capacityRebalance': ?capacityRebalance,
      'capacityReservationSpecification': ?pulumi.Input.mapOptionalInputValue<GroupCapacityReservationSpecification, Map<String, dynamic>>(capacityReservationSpecification, (value) => value.toMap()),
      'context': ?context,
      'defaultCooldown': ?defaultCooldown,
      'defaultInstanceWarmup': ?defaultInstanceWarmup,
      'desiredCapacity': ?desiredCapacity,
      'desiredCapacityType': ?desiredCapacityType,
      'enabledMetrics': ?pulumi.Input.mapOptionalInputValue<List<Metric>, List<String>>(enabledMetrics, (value) => pulumi.Input.encodeList<Metric, String>(value, (value) => value.value)),
      'forceDelete': ?forceDelete,
      'forceDeleteWarmPool': ?forceDeleteWarmPool,
      'healthCheckGracePeriod': ?healthCheckGracePeriod,
      'healthCheckType': ?healthCheckType,
      'ignoreFailedScalingActivities': ?ignoreFailedScalingActivities,
      'initialLifecycleHooks': ?pulumi.Input.mapOptionalInputValue<List<GroupInitialLifecycleHook>, List<Map<String, dynamic>>>(initialLifecycleHooks, (value) => pulumi.Input.encodeList<GroupInitialLifecycleHook, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceMaintenancePolicy': ?pulumi.Input.mapOptionalInputValue<GroupInstanceMaintenancePolicy, Map<String, dynamic>>(instanceMaintenancePolicy, (value) => value.toMap()),
      'instanceRefresh': ?pulumi.Input.mapOptionalInputValue<GroupInstanceRefresh, Map<String, dynamic>>(instanceRefresh, (value) => value.toMap()),
      'launchConfiguration': ?launchConfiguration,
      'launchTemplate': ?pulumi.Input.mapOptionalInputValue<GroupLaunchTemplate, Map<String, dynamic>>(launchTemplate, (value) => value.toMap()),
      'loadBalancers': ?loadBalancers,
      'maxInstanceLifetime': ?maxInstanceLifetime,
      'maxSize': ?maxSize,
      'metricsGranularity': ?metricsGranularity,
      'minElbCapacity': ?minElbCapacity,
      'minSize': ?minSize,
      'mixedInstancesPolicy': ?pulumi.Input.mapOptionalInputValue<GroupMixedInstancesPolicy, Map<String, dynamic>>(mixedInstancesPolicy, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'placementGroup': ?placementGroup,
      'predictedCapacity': ?predictedCapacity,
      'protectFromScaleIn': ?protectFromScaleIn,
      'region': ?region,
      'serviceLinkedRoleArn': ?serviceLinkedRoleArn,
      'suspendedProcesses': ?suspendedProcesses,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<GroupTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GroupTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetGroupArns': ?targetGroupArns,
      'terminationPolicies': ?terminationPolicies,
      'trafficSources': ?pulumi.Input.mapOptionalInputValue<List<GroupTrafficSource>, List<Map<String, dynamic>>>(trafficSources, (value) => pulumi.Input.encodeList<GroupTrafficSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcZoneIdentifiers': ?vpcZoneIdentifiers,
      'waitForCapacityTimeout': ?waitForCapacityTimeout,
      'waitForElbCapacity': ?waitForElbCapacity,
      'warmPool': ?pulumi.Input.mapOptionalInputValue<GroupWarmPool, Map<String, dynamic>>(warmPool, (value) => value.toMap()),
      'warmPoolSize': ?warmPoolSize,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      availabilityZoneDistribution: map['availabilityZoneDistribution'] == null ? null : ((GroupAvailabilityZoneDistribution.fromMap((map['availabilityZoneDistribution']! as Map).cast<String, dynamic>())).input()).input(),
      availabilityZones: map['availabilityZones'] == null ? null : (((map['availabilityZones'] as List).cast<String>()).input()).input(),
      capacityRebalance: map['capacityRebalance'] == null ? null : ((map['capacityRebalance'] as bool).input()).input(),
      capacityReservationSpecification: map['capacityReservationSpecification'] == null ? null : ((GroupCapacityReservationSpecification.fromMap((map['capacityReservationSpecification']! as Map).cast<String, dynamic>())).input()).input(),
      context: map['context'] == null ? null : ((map['context'] as String).input()).input(),
      defaultCooldown: map['defaultCooldown'] == null ? null : ((map['defaultCooldown'] as int).input()).input(),
      defaultInstanceWarmup: map['defaultInstanceWarmup'] == null ? null : ((map['defaultInstanceWarmup'] as int).input()).input(),
      desiredCapacity: map['desiredCapacity'] == null ? null : ((map['desiredCapacity'] as int).input()).input(),
      desiredCapacityType: map['desiredCapacityType'] == null ? null : ((map['desiredCapacityType'] as String).input()).input(),
      enabledMetrics: map['enabledMetrics'] == null ? null : ((pulumi.Input.decodeList<Metric>(map['enabledMetrics']!, (value) => Metric.fromValue(value as String))).input()).input(),
      forceDelete: map['forceDelete'] == null ? null : ((map['forceDelete'] as bool).input()).input(),
      forceDeleteWarmPool: map['forceDeleteWarmPool'] == null ? null : ((map['forceDeleteWarmPool'] as bool).input()).input(),
      healthCheckGracePeriod: map['healthCheckGracePeriod'] == null ? null : ((map['healthCheckGracePeriod'] as int).input()).input(),
      healthCheckType: map['healthCheckType'] == null ? null : ((map['healthCheckType'] as String).input()).input(),
      ignoreFailedScalingActivities: map['ignoreFailedScalingActivities'] == null ? null : ((map['ignoreFailedScalingActivities'] as bool).input()).input(),
      initialLifecycleHooks: map['initialLifecycleHooks'] == null ? null : ((pulumi.Input.decodeList<GroupInitialLifecycleHook>(map['initialLifecycleHooks']!, (value) => GroupInitialLifecycleHook.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      instanceMaintenancePolicy: map['instanceMaintenancePolicy'] == null ? null : ((GroupInstanceMaintenancePolicy.fromMap((map['instanceMaintenancePolicy']! as Map).cast<String, dynamic>())).input()).input(),
      instanceRefresh: map['instanceRefresh'] == null ? null : ((GroupInstanceRefresh.fromMap((map['instanceRefresh']! as Map).cast<String, dynamic>())).input()).input(),
      launchConfiguration: map['launchConfiguration'] == null ? null : ((map['launchConfiguration'] as String).input()).input(),
      launchTemplate: map['launchTemplate'] == null ? null : ((GroupLaunchTemplate.fromMap((map['launchTemplate']! as Map).cast<String, dynamic>())).input()).input(),
      loadBalancers: map['loadBalancers'] == null ? null : (((map['loadBalancers'] as List).cast<String>()).input()).input(),
      maxInstanceLifetime: map['maxInstanceLifetime'] == null ? null : ((map['maxInstanceLifetime'] as int).input()).input(),
      maxSize: map['maxSize'] == null ? null : ((map['maxSize'] as int).input()).input(),
      metricsGranularity: map['metricsGranularity'] == null ? null : ((map['metricsGranularity'] as String).input()).input(),
      minElbCapacity: map['minElbCapacity'] == null ? null : ((map['minElbCapacity'] as int).input()).input(),
      minSize: map['minSize'] == null ? null : ((map['minSize'] as int).input()).input(),
      mixedInstancesPolicy: map['mixedInstancesPolicy'] == null ? null : ((GroupMixedInstancesPolicy.fromMap((map['mixedInstancesPolicy']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      namePrefix: map['namePrefix'] == null ? null : ((map['namePrefix'] as String).input()).input(),
      placementGroup: map['placementGroup'] == null ? null : ((map['placementGroup'] as String).input()).input(),
      predictedCapacity: map['predictedCapacity'] == null ? null : ((map['predictedCapacity'] as int).input()).input(),
      protectFromScaleIn: map['protectFromScaleIn'] == null ? null : ((map['protectFromScaleIn'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serviceLinkedRoleArn: map['serviceLinkedRoleArn'] == null ? null : ((map['serviceLinkedRoleArn'] as String).input()).input(),
      suspendedProcesses: map['suspendedProcesses'] == null ? null : (((map['suspendedProcesses'] as List).cast<String>()).input()).input(),
      tags: map['tags'] == null ? null : ((pulumi.Input.decodeList<GroupTag>(map['tags']!, (value) => GroupTag.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      targetGroupArns: map['targetGroupArns'] == null ? null : (((map['targetGroupArns'] as List).cast<String>()).input()).input(),
      terminationPolicies: map['terminationPolicies'] == null ? null : (((map['terminationPolicies'] as List).cast<String>()).input()).input(),
      trafficSources: map['trafficSources'] == null ? null : ((pulumi.Input.decodeList<GroupTrafficSource>(map['trafficSources']!, (value) => GroupTrafficSource.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      vpcZoneIdentifiers: map['vpcZoneIdentifiers'] == null ? null : (((map['vpcZoneIdentifiers'] as List).cast<String>()).input()).input(),
      waitForCapacityTimeout: map['waitForCapacityTimeout'] == null ? null : ((map['waitForCapacityTimeout'] as String).input()).input(),
      waitForElbCapacity: map['waitForElbCapacity'] == null ? null : ((map['waitForElbCapacity'] as int).input()).input(),
      warmPool: map['warmPool'] == null ? null : ((GroupWarmPool.fromMap((map['warmPool']! as Map).cast<String, dynamic>())).input()).input(),
      warmPoolSize: map['warmPoolSize'] == null ? null : ((map['warmPoolSize'] as int).input()).input(),
    );
  }
}

