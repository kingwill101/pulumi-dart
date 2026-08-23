// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_availability_zone_distribution.dart';
import 'group_capacity_reservation_specification.dart';
import 'group_initial_lifecycle_hook.dart';
import 'group_instance_lifecycle_policy.dart';
import 'group_instance_maintenance_policy.dart';
import 'group_instance_refresh.dart';
import 'group_launch_template.dart';
import 'group_mixed_instances_policy.dart';
import 'group_tag.dart';
import 'group_traffic_source.dart';
import 'group_warm_pool.dart';
import 'metric.dart';

/// {@template pulumi_autoscaling_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_autoscaling_group_group_args_doc}
class GroupArgs {
  /// The instance capacity distribution across Availability Zones. See `availabilityZoneDistribution` Block below for more details.
  final pulumi.Input<GroupAvailabilityZoneDistribution>? availabilityZoneDistribution;
  /// A list of Availability Zones where instances in the Auto Scaling group can be created. Used for launching into the default VPC subnet in each Availability Zone when not using the `vpcZoneIdentifier` attribute, or for attaching a network interface when an existing network interface ID is specified in a launch template. Conflicts with `vpcZoneIdentifier`.
  final pulumi.Input<List<String>>? availabilityZones;
  /// Whether capacity rebalance is enabled. Otherwise, capacity rebalance is disabled.
  final pulumi.Input<bool>? capacityRebalance;
  /// The capacity reservation specification for the Auto Scaling group allows you to prioritize launching into On-Demand Capacity Reservations. See `capacityReservationSpecification` Block below for more details.
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
  /// The unit of measurement for the value specified for `desiredCapacity`. Supported for attribute-based instance type selection only. Valid values: `"units"`, `"vcpu"`, `"memory-mib"`.
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
  /// resource, without the `autoscalingGroupName` attribute. Please note that this will only work when creating
  /// a new Auto Scaling Group. For all other use-cases, please use `aws.autoscaling.LifecycleHook` resource.
  final pulumi.Input<List<GroupInitialLifecycleHook>>? initialLifecycleHooks;
  /// If this block is configured, adds an instance lifecycle policy to the specified Auto Scaling Group. Defined below.
  final pulumi.Input<GroupInstanceLifecyclePolicy>? instanceLifecyclePolicy;
  /// If this block is configured, add a instance maintenance policy to the specified Auto Scaling group. Defined below.
  final pulumi.Input<GroupInstanceMaintenancePolicy>? instanceMaintenancePolicy;
  /// If this block is configured, start an
  /// [Instance Refresh](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
  /// when this Auto Scaling Group is updated. Defined below.
  final pulumi.Input<GroupInstanceRefresh>? instanceRefresh;
  /// Name of the launch configuration to use.
  final pulumi.Input<String>? launchConfiguration;
  /// Nested argument with Launch template specification to use to launch instances. See `launchTemplate` Block below for more details.
  final pulumi.Input<GroupLaunchTemplate>? launchTemplate;
  /// List of elastic load balancer names to add to the autoscaling
  /// group names. Only valid for classic load balancers. For ALBs, use `targetGroupArns` instead. To remove all load balancer attachments an empty list should be specified.
  final pulumi.Input<List<String>>? loadBalancers;
  /// Maximum amount of time, in seconds, that an instance can be in service, values must be either equal to 0 or between 86400 and 31536000 seconds.
  final pulumi.Input<int>? maxInstanceLifetime;
  /// Maximum size of the Auto Scaling Group.
  final pulumi.Input<int> maxSize;
  /// Granularity to associate with the metrics to collect. The only valid value is `1Minute`. Default is `1Minute`.
  final pulumi.Input<String>? metricsGranularity;
  /// Setting this causes Pulumi to wait for
  /// this number of instances from this Auto Scaling Group to show up healthy in the
  /// ELB only on creation. Updates will not wait on ELB instance number changes.
  /// (See also Waiting for Capacity below.)
  final pulumi.Input<int>? minElbCapacity;
  /// Minimum size of the Auto Scaling Group.
  /// (See also Waiting for Capacity below.)
  final pulumi.Input<int> minSize;
  /// Configuration block containing settings to define launch targets for Auto Scaling groups. See `mixedInstancesPolicy` Block below for more details.
  final pulumi.Input<GroupMixedInstancesPolicy>? mixedInstancesPolicy;
  /// Name of the Auto Scaling Group. By default generated by Pulumi. Conflicts with `namePrefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Name of the placement group into which you'll launch your instances, if any.
  final pulumi.Input<String>? placementGroup;
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
  /// Configuration block(s) containing resource tags. See `tag` Block below for more details.
  final pulumi.Input<List<GroupTag>>? tags;
  /// Set of `aws.lb.TargetGroup` ARNs, for use with Application or Network Load Balancing. To remove all target group attachments an empty list should be specified.
  final pulumi.Input<List<String>>? targetGroupArns;
  /// List of policies to decide how the instances in the Auto Scaling Group should be terminated. The allowed values are `OldestInstance`, `NewestInstance`, `OldestLaunchConfiguration`, `ClosestToNextInstanceHour`, `OldestLaunchTemplate`, `AllocationStrategy`, `Default`. Additionally, the ARN of a Lambda function can be specified for custom termination policies.
  final pulumi.Input<List<String>>? terminationPolicies;
  /// Attaches one or more traffic sources to the specified Auto Scaling group.
  final pulumi.Input<List<GroupTrafficSource>>? trafficSources;
  /// List of subnet IDs to launch resources in. Subnets automatically determine which availability zones the group will reside. Conflicts with `availabilityZones`.
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
  /// precedence over `minElbCapacity` behavior.)
  /// (See also Waiting for Capacity below.)
  final pulumi.Input<int>? waitForElbCapacity;
  /// If this block is configured, add a [Warm Pool](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html)
  /// to the specified Auto Scaling group. Defined below
  final pulumi.Input<GroupWarmPool>? warmPool;

  /// Creates a new [GroupArgs].
  /// [availabilityZoneDistribution] The instance capacity distribution across Availability Zones. See `availabilityZoneDistribution` Block below for more details.
  /// [availabilityZones] A list of Availability Zones where instances in the Auto Scaling group can be created. Used for launching into the default VPC subnet in each Availability Zone when not using the `vpcZoneIdentifier` attribute, or for attaching a network interface when an existing network interface ID is specified in a launch template. Conflicts with `vpcZoneIdentifier`.
  /// [capacityRebalance] Whether capacity rebalance is enabled. Otherwise, capacity rebalance is disabled.
  /// [capacityReservationSpecification] The capacity reservation specification for the Auto Scaling group allows you to prioritize launching into On-Demand Capacity Reservations. See `capacityReservationSpecification` Block below for more details.
  /// [context] Reserved.
  /// [defaultCooldown] Amount of time, in seconds, after a scaling activity completes before another scaling activity can start.
  /// [defaultInstanceWarmup] Amount of time, in seconds, until a newly launched instance can contribute to the Amazon CloudWatch metrics. This delay lets an instance finish initializing before Amazon EC2 Auto Scaling aggregates instance metrics, resulting in more reliable usage data. Set this value equal to the amount of time that it takes for resource consumption to become stable after an instance reaches the InService state. (See [Set the default instance warmup for an Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html))
  /// [desiredCapacity] Number of Amazon EC2 instances that
  /// [desiredCapacityType] The unit of measurement for the value specified for `desiredCapacity`. Supported for attribute-based instance type selection only. Valid values: `"units"`, `"vcpu"`, `"memory-mib"`.
  /// [enabledMetrics] List of metrics to collect. The allowed values are defined by the [underlying AWS API](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html).
  /// [forceDelete] Allows deleting the Auto Scaling Group without waiting
  /// [forceDeleteWarmPool] Allows deleting the Auto Scaling Group without waiting for all instances in the warm pool to terminate.
  /// [healthCheckGracePeriod] Time (in seconds) after instance comes into service before checking health.
  /// [healthCheckType] "EC2" or "ELB". Controls how health checking is done.
  /// [ignoreFailedScalingActivities] Whether to ignore failed [Auto Scaling scaling activities](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-verify-scaling-activity.html) while waiting for capacity. The default is `false` -- failed scaling activities cause errors to be returned.
  /// [initialLifecycleHooks] One or more
  /// [instanceLifecyclePolicy] If this block is configured, adds an instance lifecycle policy to the specified Auto Scaling Group. Defined below.
  /// [instanceMaintenancePolicy] If this block is configured, add a instance maintenance policy to the specified Auto Scaling group. Defined below.
  /// [instanceRefresh] If this block is configured, start an
  /// [launchConfiguration] Name of the launch configuration to use.
  /// [launchTemplate] Nested argument with Launch template specification to use to launch instances. See `launchTemplate` Block below for more details.
  /// [loadBalancers] List of elastic load balancer names to add to the autoscaling
  /// [maxInstanceLifetime] Maximum amount of time, in seconds, that an instance can be in service, values must be either equal to 0 or between 86400 and 31536000 seconds.
  /// [maxSize] Maximum size of the Auto Scaling Group.
  /// [metricsGranularity] Granularity to associate with the metrics to collect. The only valid value is `1Minute`. Default is `1Minute`.
  /// [minElbCapacity] Setting this causes Pulumi to wait for
  /// [minSize] Minimum size of the Auto Scaling Group.
  /// [mixedInstancesPolicy] Configuration block containing settings to define launch targets for Auto Scaling groups. See `mixedInstancesPolicy` Block below for more details.
  /// [name] Name of the Auto Scaling Group. By default generated by Pulumi. Conflicts with `namePrefix`.
  /// [namePrefix] Creates a unique name beginning with the specified
  /// [placementGroup] Name of the placement group into which you'll launch your instances, if any.
  /// [protectFromScaleIn] Whether newly launched instances
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceLinkedRoleArn] ARN of the service-linked role that the ASG will use to call other AWS services
  /// [suspendedProcesses] List of processes to suspend for the Auto Scaling Group. The allowed values are `Launch`, `Terminate`, `HealthCheck`, `ReplaceUnhealthy`, `AZRebalance`, `AlarmNotification`, `ScheduledActions`, `AddToLoadBalancer`, `InstanceRefresh`.
  /// [tags] Configuration block(s) containing resource tags. See `tag` Block below for more details.
  /// [targetGroupArns] Set of `aws.lb.TargetGroup` ARNs, for use with Application or Network Load Balancing. To remove all target group attachments an empty list should be specified.
  /// [terminationPolicies] List of policies to decide how the instances in the Auto Scaling Group should be terminated. The allowed values are `OldestInstance`, `NewestInstance`, `OldestLaunchConfiguration`, `ClosestToNextInstanceHour`, `OldestLaunchTemplate`, `AllocationStrategy`, `Default`. Additionally, the ARN of a Lambda function can be specified for custom termination policies.
  /// [trafficSources] Attaches one or more traffic sources to the specified Auto Scaling group.
  /// [vpcZoneIdentifiers] List of subnet IDs to launch resources in. Subnets automatically determine which availability zones the group will reside. Conflicts with `availabilityZones`.
  /// [waitForCapacityTimeout] Maximum
  /// [waitForElbCapacity] Setting this will cause Pulumi to wait
  /// [warmPool] If this block is configured, add a [Warm Pool](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html)
  const GroupArgs({
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
    this.instanceLifecyclePolicy,
    this.instanceMaintenancePolicy,
    this.instanceRefresh,
    this.launchConfiguration,
    this.launchTemplate,
    this.loadBalancers,
    this.maxInstanceLifetime,
    required this.maxSize,
    this.metricsGranularity,
    this.minElbCapacity,
    required this.minSize,
    this.mixedInstancesPolicy,
    this.name,
    this.namePrefix,
    this.placementGroup,
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneDistribution': ?pulumi.Input.mapOptionalInputValue<GroupAvailabilityZoneDistribution, Map<String, dynamic>>(availabilityZoneDistribution, (value) => value.toMap()),
      'availabilityZones': ?availabilityZones,
      'capacityRebalance': ?capacityRebalance,
      'capacityReservationSpecification': ?pulumi.Input.mapOptionalInputValue<GroupCapacityReservationSpecification, Map<String, dynamic>>(capacityReservationSpecification, (value) => value.toMap()),
      'context': ?context,
      'defaultCooldown': ?defaultCooldown,
      'defaultInstanceWarmup': ?defaultInstanceWarmup,
      'desiredCapacity': ?desiredCapacity,
      'desiredCapacityType': ?desiredCapacityType,
      'enabledMetrics': ?pulumi.Input.mapOptionalInputValue<List<Metric>, List<String>>(enabledMetrics, (value) => pulumi.Input.encodeList<Metric, String>(value, (value) => value.wireValue)),
      'forceDelete': ?forceDelete,
      'forceDeleteWarmPool': ?forceDeleteWarmPool,
      'healthCheckGracePeriod': ?healthCheckGracePeriod,
      'healthCheckType': ?healthCheckType,
      'ignoreFailedScalingActivities': ?ignoreFailedScalingActivities,
      'initialLifecycleHooks': ?pulumi.Input.mapOptionalInputValue<List<GroupInitialLifecycleHook>, List<Map<String, dynamic>>>(initialLifecycleHooks, (value) => pulumi.Input.encodeList<GroupInitialLifecycleHook, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceLifecyclePolicy': ?pulumi.Input.mapOptionalInputValue<GroupInstanceLifecyclePolicy, Map<String, dynamic>>(instanceLifecyclePolicy, (value) => value.toMap()),
      'instanceMaintenancePolicy': ?pulumi.Input.mapOptionalInputValue<GroupInstanceMaintenancePolicy, Map<String, dynamic>>(instanceMaintenancePolicy, (value) => value.toMap()),
      'instanceRefresh': ?pulumi.Input.mapOptionalInputValue<GroupInstanceRefresh, Map<String, dynamic>>(instanceRefresh, (value) => value.toMap()),
      'launchConfiguration': ?launchConfiguration,
      'launchTemplate': ?pulumi.Input.mapOptionalInputValue<GroupLaunchTemplate, Map<String, dynamic>>(launchTemplate, (value) => value.toMap()),
      'loadBalancers': ?loadBalancers,
      'maxInstanceLifetime': ?maxInstanceLifetime,
      'maxSize': maxSize,
      'metricsGranularity': ?metricsGranularity,
      'minElbCapacity': ?minElbCapacity,
      'minSize': minSize,
      'mixedInstancesPolicy': ?pulumi.Input.mapOptionalInputValue<GroupMixedInstancesPolicy, Map<String, dynamic>>(mixedInstancesPolicy, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'placementGroup': ?placementGroup,
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
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      availabilityZoneDistribution: (() { final guardedValue = map['availabilityZoneDistribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupAvailabilityZoneDistribution.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      capacityRebalance: (() { final guardedValue = map['capacityRebalance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      capacityReservationSpecification: (() { final guardedValue = map['capacityReservationSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupCapacityReservationSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultCooldown: (() { final guardedValue = map['defaultCooldown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      defaultInstanceWarmup: (() { final guardedValue = map['defaultInstanceWarmup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      desiredCapacity: (() { final guardedValue = map['desiredCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      desiredCapacityType: (() { final guardedValue = map['desiredCapacityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabledMetrics: (() { final guardedValue = map['enabledMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Metric>(guardedValue, (value) => Metric.fromValue(value as String))); })(),
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceDeleteWarmPool: (() { final guardedValue = map['forceDeleteWarmPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      healthCheckGracePeriod: (() { final guardedValue = map['healthCheckGracePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      healthCheckType: (() { final guardedValue = map['healthCheckType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreFailedScalingActivities: (() { final guardedValue = map['ignoreFailedScalingActivities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      initialLifecycleHooks: (() { final guardedValue = map['initialLifecycleHooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupInitialLifecycleHook>(guardedValue, (value) => GroupInitialLifecycleHook.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceLifecyclePolicy: (() { final guardedValue = map['instanceLifecyclePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupInstanceLifecyclePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceMaintenancePolicy: (() { final guardedValue = map['instanceMaintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupInstanceMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceRefresh: (() { final guardedValue = map['instanceRefresh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupInstanceRefresh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      launchConfiguration: (() { final guardedValue = map['launchConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplate: (() { final guardedValue = map['launchTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupLaunchTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loadBalancers: (() { final guardedValue = map['loadBalancers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxInstanceLifetime: (() { final guardedValue = map['maxInstanceLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxSize: pulumi.Input.fromValue(map['maxSize'] as int),
      metricsGranularity: (() { final guardedValue = map['metricsGranularity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minElbCapacity: (() { final guardedValue = map['minElbCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minSize: pulumi.Input.fromValue(map['minSize'] as int),
      mixedInstancesPolicy: (() { final guardedValue = map['mixedInstancesPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupMixedInstancesPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementGroup: (() { final guardedValue = map['placementGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectFromScaleIn: (() { final guardedValue = map['protectFromScaleIn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceLinkedRoleArn: (() { final guardedValue = map['serviceLinkedRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suspendedProcesses: (() { final guardedValue = map['suspendedProcesses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupTag>(guardedValue, (value) => GroupTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetGroupArns: (() { final guardedValue = map['targetGroupArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      terminationPolicies: (() { final guardedValue = map['terminationPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      trafficSources: (() { final guardedValue = map['trafficSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupTrafficSource>(guardedValue, (value) => GroupTrafficSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcZoneIdentifiers: (() { final guardedValue = map['vpcZoneIdentifiers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      waitForCapacityTimeout: (() { final guardedValue = map['waitForCapacityTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      waitForElbCapacity: (() { final guardedValue = map['waitForElbCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      warmPool: (() { final guardedValue = map['warmPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupWarmPool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
