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

/// {@template pulumi_autoscaling_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_autoscaling_group_group_args_doc}
class GroupArgs {
  /// The instance capacity distribution across Availability Zones. See Availability Zone Distribution below for more details.
  final pulumi.Input<GroupAvailabilityZoneDistribution>?
  availabilityZoneDistribution;

  /// A list of Availability Zones where instances in the Auto Scaling group can be created. Used for launching into the default VPC subnet in each Availability Zone when not using the `vpc_zone_identifier` attribute, or for attaching a network interface when an existing network interface ID is specified in a launch template. Conflicts with `vpc_zone_identifier`.
  final pulumi.Input<List<String>>? availabilityZones;

  /// Whether capacity rebalance is enabled. Otherwise, capacity rebalance is disabled.
  final pulumi.Input<bool>? capacityRebalance;

  /// The capacity reservation specification for the Auto Scaling group allows you to prioritize launching into On-Demand Capacity Reservations. See Capacity Reservation Specification below for more details.
  final pulumi.Input<GroupCapacityReservationSpecification>?
  capacityReservationSpecification;

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

  /// Configuration block containing settings to define launch targets for Auto Scaling groups. See Mixed Instances Policy below for more details.
  final pulumi.Input<GroupMixedInstancesPolicy>? mixedInstancesPolicy;

  /// Name of the Auto Scaling Group. By default generated by Pulumi. Conflicts with `name_prefix`.
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

  /// Creates a new [GroupArgs].
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
  GroupArgs({
    GroupAvailabilityZoneDistribution? availabilityZoneDistribution,
    List<String>? availabilityZones,
    bool? capacityRebalance,
    GroupCapacityReservationSpecification? capacityReservationSpecification,
    String? context,
    int? defaultCooldown,
    int? defaultInstanceWarmup,
    int? desiredCapacity,
    String? desiredCapacityType,
    List<Metric>? enabledMetrics,
    bool? forceDelete,
    bool? forceDeleteWarmPool,
    int? healthCheckGracePeriod,
    String? healthCheckType,
    bool? ignoreFailedScalingActivities,
    List<GroupInitialLifecycleHook>? initialLifecycleHooks,
    GroupInstanceMaintenancePolicy? instanceMaintenancePolicy,
    GroupInstanceRefresh? instanceRefresh,
    String? launchConfiguration,
    GroupLaunchTemplate? launchTemplate,
    List<String>? loadBalancers,
    int? maxInstanceLifetime,
    required int maxSize,
    String? metricsGranularity,
    int? minElbCapacity,
    required int minSize,
    GroupMixedInstancesPolicy? mixedInstancesPolicy,
    String? name,
    String? namePrefix,
    String? placementGroup,
    bool? protectFromScaleIn,
    String? region,
    String? serviceLinkedRoleArn,
    List<String>? suspendedProcesses,
    List<GroupTag>? tags,
    List<String>? targetGroupArns,
    List<String>? terminationPolicies,
    List<GroupTrafficSource>? trafficSources,
    List<String>? vpcZoneIdentifiers,
    String? waitForCapacityTimeout,
    int? waitForElbCapacity,
    GroupWarmPool? warmPool,
  }) : availabilityZoneDistribution =
           pulumi.Input.asOptionalInput<GroupAvailabilityZoneDistribution>(
             availabilityZoneDistribution,
           ),
       availabilityZones = pulumi.Input.asOptionalInput<List<String>>(
         availabilityZones,
       ),
       capacityRebalance = pulumi.Input.asOptionalInput<bool>(
         capacityRebalance,
       ),
       capacityReservationSpecification =
           pulumi.Input.asOptionalInput<GroupCapacityReservationSpecification>(
             capacityReservationSpecification,
           ),
       context = pulumi.Input.asOptionalInput<String>(context),
       defaultCooldown = pulumi.Input.asOptionalInput<int>(defaultCooldown),
       defaultInstanceWarmup = pulumi.Input.asOptionalInput<int>(
         defaultInstanceWarmup,
       ),
       desiredCapacity = pulumi.Input.asOptionalInput<int>(desiredCapacity),
       desiredCapacityType = pulumi.Input.asOptionalInput<String>(
         desiredCapacityType,
       ),
       enabledMetrics = pulumi.Input.asOptionalInput<List<Metric>>(
         enabledMetrics,
       ),
       forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
       forceDeleteWarmPool = pulumi.Input.asOptionalInput<bool>(
         forceDeleteWarmPool,
       ),
       healthCheckGracePeriod = pulumi.Input.asOptionalInput<int>(
         healthCheckGracePeriod,
       ),
       healthCheckType = pulumi.Input.asOptionalInput<String>(healthCheckType),
       ignoreFailedScalingActivities = pulumi.Input.asOptionalInput<bool>(
         ignoreFailedScalingActivities,
       ),
       initialLifecycleHooks =
           pulumi.Input.asOptionalInput<List<GroupInitialLifecycleHook>>(
             initialLifecycleHooks,
           ),
       instanceMaintenancePolicy =
           pulumi.Input.asOptionalInput<GroupInstanceMaintenancePolicy>(
             instanceMaintenancePolicy,
           ),
       instanceRefresh = pulumi.Input.asOptionalInput<GroupInstanceRefresh>(
         instanceRefresh,
       ),
       launchConfiguration = pulumi.Input.asOptionalInput<String>(
         launchConfiguration,
       ),
       launchTemplate = pulumi.Input.asOptionalInput<GroupLaunchTemplate>(
         launchTemplate,
       ),
       loadBalancers = pulumi.Input.asOptionalInput<List<String>>(
         loadBalancers,
       ),
       maxInstanceLifetime = pulumi.Input.asOptionalInput<int>(
         maxInstanceLifetime,
       ),
       maxSize = pulumi.Input.asInput<int>(maxSize),
       metricsGranularity = pulumi.Input.asOptionalInput<String>(
         metricsGranularity,
       ),
       minElbCapacity = pulumi.Input.asOptionalInput<int>(minElbCapacity),
       minSize = pulumi.Input.asInput<int>(minSize),
       mixedInstancesPolicy =
           pulumi.Input.asOptionalInput<GroupMixedInstancesPolicy>(
             mixedInstancesPolicy,
           ),
       name = pulumi.Input.asOptionalInput<String>(name),
       namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
       placementGroup = pulumi.Input.asOptionalInput<String>(placementGroup),
       protectFromScaleIn = pulumi.Input.asOptionalInput<bool>(
         protectFromScaleIn,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       serviceLinkedRoleArn = pulumi.Input.asOptionalInput<String>(
         serviceLinkedRoleArn,
       ),
       suspendedProcesses = pulumi.Input.asOptionalInput<List<String>>(
         suspendedProcesses,
       ),
       tags = pulumi.Input.asOptionalInput<List<GroupTag>>(tags),
       targetGroupArns = pulumi.Input.asOptionalInput<List<String>>(
         targetGroupArns,
       ),
       terminationPolicies = pulumi.Input.asOptionalInput<List<String>>(
         terminationPolicies,
       ),
       trafficSources = pulumi.Input.asOptionalInput<List<GroupTrafficSource>>(
         trafficSources,
       ),
       vpcZoneIdentifiers = pulumi.Input.asOptionalInput<List<String>>(
         vpcZoneIdentifiers,
       ),
       waitForCapacityTimeout = pulumi.Input.asOptionalInput<String>(
         waitForCapacityTimeout,
       ),
       waitForElbCapacity = pulumi.Input.asOptionalInput<int>(
         waitForElbCapacity,
       ),
       warmPool = pulumi.Input.asOptionalInput<GroupWarmPool>(warmPool);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneDistribution':
          ?pulumi.Input.mapOptionalInputValue<
            GroupAvailabilityZoneDistribution,
            Map<String, dynamic>
          >(availabilityZoneDistribution, (value) => value.toMap()),
      'availabilityZones': ?availabilityZones,
      'capacityRebalance': ?capacityRebalance,
      'capacityReservationSpecification':
          ?pulumi.Input.mapOptionalInputValue<
            GroupCapacityReservationSpecification,
            Map<String, dynamic>
          >(capacityReservationSpecification, (value) => value.toMap()),
      'context': ?context,
      'defaultCooldown': ?defaultCooldown,
      'defaultInstanceWarmup': ?defaultInstanceWarmup,
      'desiredCapacity': ?desiredCapacity,
      'desiredCapacityType': ?desiredCapacityType,
      'enabledMetrics':
          ?pulumi.Input.mapOptionalInputValue<List<Metric>, List<String>>(
            enabledMetrics,
            (value) => pulumi.Input.encodeList<Metric, String>(
              value,
              (value) => value.value,
            ),
          ),
      'forceDelete': ?forceDelete,
      'forceDeleteWarmPool': ?forceDeleteWarmPool,
      'healthCheckGracePeriod': ?healthCheckGracePeriod,
      'healthCheckType': ?healthCheckType,
      'ignoreFailedScalingActivities': ?ignoreFailedScalingActivities,
      'initialLifecycleHooks':
          ?pulumi.Input.mapOptionalInputValue<
            List<GroupInitialLifecycleHook>,
            List<Map<String, dynamic>>
          >(
            initialLifecycleHooks,
            (value) =>
                pulumi.Input.encodeList<
                  GroupInitialLifecycleHook,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'instanceMaintenancePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            GroupInstanceMaintenancePolicy,
            Map<String, dynamic>
          >(instanceMaintenancePolicy, (value) => value.toMap()),
      'instanceRefresh':
          ?pulumi.Input.mapOptionalInputValue<
            GroupInstanceRefresh,
            Map<String, dynamic>
          >(instanceRefresh, (value) => value.toMap()),
      'launchConfiguration': ?launchConfiguration,
      'launchTemplate':
          ?pulumi.Input.mapOptionalInputValue<
            GroupLaunchTemplate,
            Map<String, dynamic>
          >(launchTemplate, (value) => value.toMap()),
      'loadBalancers': ?loadBalancers,
      'maxInstanceLifetime': ?maxInstanceLifetime,
      'maxSize': maxSize,
      'metricsGranularity': ?metricsGranularity,
      'minElbCapacity': ?minElbCapacity,
      'minSize': minSize,
      'mixedInstancesPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            GroupMixedInstancesPolicy,
            Map<String, dynamic>
          >(mixedInstancesPolicy, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'placementGroup': ?placementGroup,
      'protectFromScaleIn': ?protectFromScaleIn,
      'region': ?region,
      'serviceLinkedRoleArn': ?serviceLinkedRoleArn,
      'suspendedProcesses': ?suspendedProcesses,
      'tags':
          ?pulumi.Input.mapOptionalInputValue<
            List<GroupTag>,
            List<Map<String, dynamic>>
          >(
            tags,
            (value) => pulumi.Input.encodeList<GroupTag, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'targetGroupArns': ?targetGroupArns,
      'terminationPolicies': ?terminationPolicies,
      'trafficSources':
          ?pulumi.Input.mapOptionalInputValue<
            List<GroupTrafficSource>,
            List<Map<String, dynamic>>
          >(
            trafficSources,
            (value) =>
                pulumi.Input.encodeList<
                  GroupTrafficSource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vpcZoneIdentifiers': ?vpcZoneIdentifiers,
      'waitForCapacityTimeout': ?waitForCapacityTimeout,
      'waitForElbCapacity': ?waitForElbCapacity,
      'warmPool':
          ?pulumi.Input.mapOptionalInputValue<
            GroupWarmPool,
            Map<String, dynamic>
          >(warmPool, (value) => value.toMap()),
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      availabilityZoneDistribution: map['availabilityZoneDistribution'] == null
          ? null
          : GroupAvailabilityZoneDistribution.fromMap(
              (map['availabilityZoneDistribution'] as Map)
                  .cast<String, dynamic>(),
            ),
      availabilityZones: map['availabilityZones'] == null
          ? null
          : (map['availabilityZones'] as List).cast<String>(),
      capacityRebalance: map['capacityRebalance'] == null
          ? null
          : map['capacityRebalance'] as bool,
      capacityReservationSpecification:
          map['capacityReservationSpecification'] == null
          ? null
          : GroupCapacityReservationSpecification.fromMap(
              (map['capacityReservationSpecification'] as Map)
                  .cast<String, dynamic>(),
            ),
      context: map['context'] == null ? null : map['context'] as String,
      defaultCooldown: map['defaultCooldown'] == null
          ? null
          : map['defaultCooldown'] as int,
      defaultInstanceWarmup: map['defaultInstanceWarmup'] == null
          ? null
          : map['defaultInstanceWarmup'] as int,
      desiredCapacity: map['desiredCapacity'] == null
          ? null
          : map['desiredCapacity'] as int,
      desiredCapacityType: map['desiredCapacityType'] == null
          ? null
          : map['desiredCapacityType'] as String,
      enabledMetrics: map['enabledMetrics'] == null
          ? null
          : pulumi.Input.decodeList<Metric>(
              map['enabledMetrics'],
              (value) => Metric.fromValue(value as String),
            ),
      forceDelete: map['forceDelete'] == null
          ? null
          : map['forceDelete'] as bool,
      forceDeleteWarmPool: map['forceDeleteWarmPool'] == null
          ? null
          : map['forceDeleteWarmPool'] as bool,
      healthCheckGracePeriod: map['healthCheckGracePeriod'] == null
          ? null
          : map['healthCheckGracePeriod'] as int,
      healthCheckType: map['healthCheckType'] == null
          ? null
          : map['healthCheckType'] as String,
      ignoreFailedScalingActivities:
          map['ignoreFailedScalingActivities'] == null
          ? null
          : map['ignoreFailedScalingActivities'] as bool,
      initialLifecycleHooks: map['initialLifecycleHooks'] == null
          ? null
          : pulumi.Input.decodeList<GroupInitialLifecycleHook>(
              map['initialLifecycleHooks'],
              (value) => GroupInitialLifecycleHook.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      instanceMaintenancePolicy: map['instanceMaintenancePolicy'] == null
          ? null
          : GroupInstanceMaintenancePolicy.fromMap(
              (map['instanceMaintenancePolicy'] as Map).cast<String, dynamic>(),
            ),
      instanceRefresh: map['instanceRefresh'] == null
          ? null
          : GroupInstanceRefresh.fromMap(
              (map['instanceRefresh'] as Map).cast<String, dynamic>(),
            ),
      launchConfiguration: map['launchConfiguration'] == null
          ? null
          : map['launchConfiguration'] as String,
      launchTemplate: map['launchTemplate'] == null
          ? null
          : GroupLaunchTemplate.fromMap(
              (map['launchTemplate'] as Map).cast<String, dynamic>(),
            ),
      loadBalancers: map['loadBalancers'] == null
          ? null
          : (map['loadBalancers'] as List).cast<String>(),
      maxInstanceLifetime: map['maxInstanceLifetime'] == null
          ? null
          : map['maxInstanceLifetime'] as int,
      maxSize: map['maxSize'] as int,
      metricsGranularity: map['metricsGranularity'] == null
          ? null
          : map['metricsGranularity'] as String,
      minElbCapacity: map['minElbCapacity'] == null
          ? null
          : map['minElbCapacity'] as int,
      minSize: map['minSize'] as int,
      mixedInstancesPolicy: map['mixedInstancesPolicy'] == null
          ? null
          : GroupMixedInstancesPolicy.fromMap(
              (map['mixedInstancesPolicy'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix: map['namePrefix'] == null
          ? null
          : map['namePrefix'] as String,
      placementGroup: map['placementGroup'] == null
          ? null
          : map['placementGroup'] as String,
      protectFromScaleIn: map['protectFromScaleIn'] == null
          ? null
          : map['protectFromScaleIn'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      serviceLinkedRoleArn: map['serviceLinkedRoleArn'] == null
          ? null
          : map['serviceLinkedRoleArn'] as String,
      suspendedProcesses: map['suspendedProcesses'] == null
          ? null
          : (map['suspendedProcesses'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : pulumi.Input.decodeList<GroupTag>(
              map['tags'],
              (value) =>
                  GroupTag.fromMap((value as Map).cast<String, dynamic>()),
            ),
      targetGroupArns: map['targetGroupArns'] == null
          ? null
          : (map['targetGroupArns'] as List).cast<String>(),
      terminationPolicies: map['terminationPolicies'] == null
          ? null
          : (map['terminationPolicies'] as List).cast<String>(),
      trafficSources: map['trafficSources'] == null
          ? null
          : pulumi.Input.decodeList<GroupTrafficSource>(
              map['trafficSources'],
              (value) => GroupTrafficSource.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      vpcZoneIdentifiers: map['vpcZoneIdentifiers'] == null
          ? null
          : (map['vpcZoneIdentifiers'] as List).cast<String>(),
      waitForCapacityTimeout: map['waitForCapacityTimeout'] == null
          ? null
          : map['waitForCapacityTimeout'] as String,
      waitForElbCapacity: map['waitForElbCapacity'] == null
          ? null
          : map['waitForElbCapacity'] as int,
      warmPool: map['warmPool'] == null
          ? null
          : GroupWarmPool.fromMap(
              (map['warmPool'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
