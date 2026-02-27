// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../group_availability_zone_distribution/group_availability_zone_distribution.dart';
import '../group_capacity_reservation_specification/group_capacity_reservation_specification.dart';
import '../group_initial_lifecycle_hook/group_initial_lifecycle_hook.dart';
import '../group_instance_maintenance_policy/group_instance_maintenance_policy.dart';
import '../group_instance_refresh/group_instance_refresh.dart';
import '../group_launch_template/group_launch_template.dart';
import '../group_mixed_instances_policy/group_mixed_instances_policy.dart';
import '../group_tag/group_tag.dart';
import '../group_traffic_source/group_traffic_source.dart';
import '../group_warm_pool/group_warm_pool.dart';
import '../metric/metric.dart';

/// The set of arguments for Group.
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

  GroupArgs({
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
    final map = <String, dynamic>{};
    final availabilityZoneDistributionValue = availabilityZoneDistribution;
    if (availabilityZoneDistributionValue != null) {
      map['availabilityZoneDistribution'] = pulumi.Input.mapOptionalInputValue<
              GroupAvailabilityZoneDistribution, Map<String, dynamic>>(
          availabilityZoneDistributionValue, (value) => value.toMap());
    }
    final availabilityZonesValue = availabilityZones;
    if (availabilityZonesValue != null) {
      map['availabilityZones'] = availabilityZonesValue;
    }
    final capacityRebalanceValue = capacityRebalance;
    if (capacityRebalanceValue != null) {
      map['capacityRebalance'] = capacityRebalanceValue;
    }
    final capacityReservationSpecificationValue =
        capacityReservationSpecification;
    if (capacityReservationSpecificationValue != null) {
      map['capacityReservationSpecification'] =
          pulumi.Input.mapOptionalInputValue<
                  GroupCapacityReservationSpecification, Map<String, dynamic>>(
              capacityReservationSpecificationValue, (value) => value.toMap());
    }
    final contextValue = context;
    if (contextValue != null) {
      map['context'] = contextValue;
    }
    final defaultCooldownValue = defaultCooldown;
    if (defaultCooldownValue != null) {
      map['defaultCooldown'] = defaultCooldownValue;
    }
    final defaultInstanceWarmupValue = defaultInstanceWarmup;
    if (defaultInstanceWarmupValue != null) {
      map['defaultInstanceWarmup'] = defaultInstanceWarmupValue;
    }
    final desiredCapacityValue = desiredCapacity;
    if (desiredCapacityValue != null) {
      map['desiredCapacity'] = desiredCapacityValue;
    }
    final desiredCapacityTypeValue = desiredCapacityType;
    if (desiredCapacityTypeValue != null) {
      map['desiredCapacityType'] = desiredCapacityTypeValue;
    }
    final enabledMetricsValue = enabledMetrics;
    if (enabledMetricsValue != null) {
      map['enabledMetrics'] =
          pulumi.Input.mapOptionalInputValue<List<Metric>, List<String>>(
              enabledMetricsValue,
              (value) => pulumi.Input.encodeList<Metric, String>(
                  value, (value) => value.value));
    }
    final forceDeleteValue = forceDelete;
    if (forceDeleteValue != null) {
      map['forceDelete'] = forceDeleteValue;
    }
    final forceDeleteWarmPoolValue = forceDeleteWarmPool;
    if (forceDeleteWarmPoolValue != null) {
      map['forceDeleteWarmPool'] = forceDeleteWarmPoolValue;
    }
    final healthCheckGracePeriodValue = healthCheckGracePeriod;
    if (healthCheckGracePeriodValue != null) {
      map['healthCheckGracePeriod'] = healthCheckGracePeriodValue;
    }
    final healthCheckTypeValue = healthCheckType;
    if (healthCheckTypeValue != null) {
      map['healthCheckType'] = healthCheckTypeValue;
    }
    final ignoreFailedScalingActivitiesValue = ignoreFailedScalingActivities;
    if (ignoreFailedScalingActivitiesValue != null) {
      map['ignoreFailedScalingActivities'] = ignoreFailedScalingActivitiesValue;
    }
    final initialLifecycleHooksValue = initialLifecycleHooks;
    if (initialLifecycleHooksValue != null) {
      map['initialLifecycleHooks'] = pulumi.Input.mapOptionalInputValue<
              List<GroupInitialLifecycleHook>, List<Map<String, dynamic>>>(
          initialLifecycleHooksValue,
          (value) => pulumi.Input.encodeList<GroupInitialLifecycleHook,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final instanceMaintenancePolicyValue = instanceMaintenancePolicy;
    if (instanceMaintenancePolicyValue != null) {
      map['instanceMaintenancePolicy'] = pulumi.Input.mapOptionalInputValue<
              GroupInstanceMaintenancePolicy, Map<String, dynamic>>(
          instanceMaintenancePolicyValue, (value) => value.toMap());
    }
    final instanceRefreshValue = instanceRefresh;
    if (instanceRefreshValue != null) {
      map['instanceRefresh'] = pulumi.Input.mapOptionalInputValue<
          GroupInstanceRefresh,
          Map<String, dynamic>>(instanceRefreshValue, (value) => value.toMap());
    }
    final launchConfigurationValue = launchConfiguration;
    if (launchConfigurationValue != null) {
      map['launchConfiguration'] = launchConfigurationValue;
    }
    final launchTemplateValue = launchTemplate;
    if (launchTemplateValue != null) {
      map['launchTemplate'] = pulumi.Input.mapOptionalInputValue<
          GroupLaunchTemplate,
          Map<String, dynamic>>(launchTemplateValue, (value) => value.toMap());
    }
    final loadBalancersValue = loadBalancers;
    if (loadBalancersValue != null) {
      map['loadBalancers'] = loadBalancersValue;
    }
    final maxInstanceLifetimeValue = maxInstanceLifetime;
    if (maxInstanceLifetimeValue != null) {
      map['maxInstanceLifetime'] = maxInstanceLifetimeValue;
    }
    map['maxSize'] = maxSize;
    final metricsGranularityValue = metricsGranularity;
    if (metricsGranularityValue != null) {
      map['metricsGranularity'] = metricsGranularityValue;
    }
    final minElbCapacityValue = minElbCapacity;
    if (minElbCapacityValue != null) {
      map['minElbCapacity'] = minElbCapacityValue;
    }
    map['minSize'] = minSize;
    final mixedInstancesPolicyValue = mixedInstancesPolicy;
    if (mixedInstancesPolicyValue != null) {
      map['mixedInstancesPolicy'] = pulumi.Input.mapOptionalInputValue<
              GroupMixedInstancesPolicy, Map<String, dynamic>>(
          mixedInstancesPolicyValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final placementGroupValue = placementGroup;
    if (placementGroupValue != null) {
      map['placementGroup'] = placementGroupValue;
    }
    final protectFromScaleInValue = protectFromScaleIn;
    if (protectFromScaleInValue != null) {
      map['protectFromScaleIn'] = protectFromScaleInValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serviceLinkedRoleArnValue = serviceLinkedRoleArn;
    if (serviceLinkedRoleArnValue != null) {
      map['serviceLinkedRoleArn'] = serviceLinkedRoleArnValue;
    }
    final suspendedProcessesValue = suspendedProcesses;
    if (suspendedProcessesValue != null) {
      map['suspendedProcesses'] = suspendedProcessesValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = pulumi.Input.mapOptionalInputValue<List<GroupTag>,
              List<Map<String, dynamic>>>(
          tagsValue,
          (value) => pulumi.Input.encodeList<GroupTag, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final targetGroupArnsValue = targetGroupArns;
    if (targetGroupArnsValue != null) {
      map['targetGroupArns'] = targetGroupArnsValue;
    }
    final terminationPoliciesValue = terminationPolicies;
    if (terminationPoliciesValue != null) {
      map['terminationPolicies'] = terminationPoliciesValue;
    }
    final trafficSourcesValue = trafficSources;
    if (trafficSourcesValue != null) {
      map['trafficSources'] = pulumi.Input.mapOptionalInputValue<
              List<GroupTrafficSource>, List<Map<String, dynamic>>>(
          trafficSourcesValue,
          (value) =>
              pulumi.Input.encodeList<GroupTrafficSource, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final vpcZoneIdentifiersValue = vpcZoneIdentifiers;
    if (vpcZoneIdentifiersValue != null) {
      map['vpcZoneIdentifiers'] = vpcZoneIdentifiersValue;
    }
    final waitForCapacityTimeoutValue = waitForCapacityTimeout;
    if (waitForCapacityTimeoutValue != null) {
      map['waitForCapacityTimeout'] = waitForCapacityTimeoutValue;
    }
    final waitForElbCapacityValue = waitForElbCapacity;
    if (waitForElbCapacityValue != null) {
      map['waitForElbCapacity'] = waitForElbCapacityValue;
    }
    final warmPoolValue = warmPool;
    if (warmPoolValue != null) {
      map['warmPool'] = pulumi.Input.mapOptionalInputValue<GroupWarmPool,
          Map<String, dynamic>>(warmPoolValue, (value) => value.toMap());
    }
    return map;
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      availabilityZoneDistribution:
          pulumi.Input.asOptionalInput<GroupAvailabilityZoneDistribution>(
              map['availabilityZoneDistribution']),
      availabilityZones:
          pulumi.Input.asOptionalInput<List<String>>(map['availabilityZones']),
      capacityRebalance:
          pulumi.Input.asOptionalInput<bool>(map['capacityRebalance']),
      capacityReservationSpecification:
          pulumi.Input.asOptionalInput<GroupCapacityReservationSpecification>(
              map['capacityReservationSpecification']),
      context: pulumi.Input.asOptionalInput<String>(map['context']),
      defaultCooldown:
          pulumi.Input.asOptionalInput<int>(map['defaultCooldown']),
      defaultInstanceWarmup:
          pulumi.Input.asOptionalInput<int>(map['defaultInstanceWarmup']),
      desiredCapacity:
          pulumi.Input.asOptionalInput<int>(map['desiredCapacity']),
      desiredCapacityType:
          pulumi.Input.asOptionalInput<String>(map['desiredCapacityType']),
      enabledMetrics:
          pulumi.Input.asOptionalInput<List<Metric>>(map['enabledMetrics']),
      forceDelete: pulumi.Input.asOptionalInput<bool>(map['forceDelete']),
      forceDeleteWarmPool:
          pulumi.Input.asOptionalInput<bool>(map['forceDeleteWarmPool']),
      healthCheckGracePeriod:
          pulumi.Input.asOptionalInput<int>(map['healthCheckGracePeriod']),
      healthCheckType:
          pulumi.Input.asOptionalInput<String>(map['healthCheckType']),
      ignoreFailedScalingActivities: pulumi.Input.asOptionalInput<bool>(
          map['ignoreFailedScalingActivities']),
      initialLifecycleHooks:
          pulumi.Input.asOptionalInput<List<GroupInitialLifecycleHook>>(
              map['initialLifecycleHooks']),
      instanceMaintenancePolicy:
          pulumi.Input.asOptionalInput<GroupInstanceMaintenancePolicy>(
              map['instanceMaintenancePolicy']),
      instanceRefresh: pulumi.Input.asOptionalInput<GroupInstanceRefresh>(
          map['instanceRefresh']),
      launchConfiguration:
          pulumi.Input.asOptionalInput<String>(map['launchConfiguration']),
      launchTemplate: pulumi.Input.asOptionalInput<GroupLaunchTemplate>(
          map['launchTemplate']),
      loadBalancers:
          pulumi.Input.asOptionalInput<List<String>>(map['loadBalancers']),
      maxInstanceLifetime:
          pulumi.Input.asOptionalInput<int>(map['maxInstanceLifetime']),
      maxSize: pulumi.Input.asInput<int>(map['maxSize']),
      metricsGranularity:
          pulumi.Input.asOptionalInput<String>(map['metricsGranularity']),
      minElbCapacity: pulumi.Input.asOptionalInput<int>(map['minElbCapacity']),
      minSize: pulumi.Input.asInput<int>(map['minSize']),
      mixedInstancesPolicy:
          pulumi.Input.asOptionalInput<GroupMixedInstancesPolicy>(
              map['mixedInstancesPolicy']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      placementGroup:
          pulumi.Input.asOptionalInput<String>(map['placementGroup']),
      protectFromScaleIn:
          pulumi.Input.asOptionalInput<bool>(map['protectFromScaleIn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceLinkedRoleArn:
          pulumi.Input.asOptionalInput<String>(map['serviceLinkedRoleArn']),
      suspendedProcesses:
          pulumi.Input.asOptionalInput<List<String>>(map['suspendedProcesses']),
      tags: pulumi.Input.asOptionalInput<List<GroupTag>>(map['tags']),
      targetGroupArns:
          pulumi.Input.asOptionalInput<List<String>>(map['targetGroupArns']),
      terminationPolicies: pulumi.Input.asOptionalInput<List<String>>(
          map['terminationPolicies']),
      trafficSources: pulumi.Input.asOptionalInput<List<GroupTrafficSource>>(
          map['trafficSources']),
      vpcZoneIdentifiers:
          pulumi.Input.asOptionalInput<List<String>>(map['vpcZoneIdentifiers']),
      waitForCapacityTimeout:
          pulumi.Input.asOptionalInput<String>(map['waitForCapacityTimeout']),
      waitForElbCapacity:
          pulumi.Input.asOptionalInput<int>(map['waitForElbCapacity']),
      warmPool: pulumi.Input.asOptionalInput<GroupWarmPool>(map['warmPool']),
    );
  }
}
