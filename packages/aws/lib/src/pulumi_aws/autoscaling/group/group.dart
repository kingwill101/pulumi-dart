import 'package:pulumi/pulumi.dart';
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
import 'group_args.dart';

/// Provides an Auto Scaling Group resource.
///
/// > **Note:** You must specify either `launch_configuration`, `launch_template`, or `mixed_instances_policy`.
///
/// > **NOTE on Auto Scaling Groups, Attachments and Traffic Source Attachments:** Pulumi provides standalone Attachment (for attaching Classic Load Balancers and Application Load Balancer, Gateway Load Balancer, or Network Load Balancer target groups) and Traffic Source Attachment (for attaching Load Balancers and VPC Lattice target groups) resources and an Auto Scaling Group resource with `load_balancers`, `target_group_arns` and `traffic_source` attributes. Do not use the same traffic source in more than one of these resources. Doing so will cause a conflict of attachments. A `lifecycle` configuration block can be used to suppress differences if necessary.
///
///
///
/// ## Example Usage
///
///
///
/// ### With Latest Version Of Launch Template
///
///
///
/// ### Mixed Instances Policy
///
///
///
/// ### Mixed Instances Policy with Spot Instances and Capacity Rebalance
///
///
///
/// ### Mixed Instances Policy with Instance level LaunchTemplateSpecification Overrides
///
/// When using a diverse instance set, some instance types might require a launch template with configuration values unique to that instance type such as a different AMI (Graviton2), architecture specific user data script, different EBS configuration, or different networking configuration.
///
///
///
/// ### Mixed Instances Policy with Attribute-based Instance Type Selection
///
/// As an alternative to manually choosing instance types when creating a mixed instances group, you can specify a set of instance attributes that describe your compute requirements.
///
///
///
/// ### Dynamic tagging
///
///
///
/// ### Automatically refresh all instances after the group is updated
///
///
///
/// ### Auto Scaling group with Warm Pool
///
///
///
/// ### Auto Scaling group with Traffic Sources
///
///
///
/// ## Waiting for Capacity
///
/// A newly-created ASG is initially empty and begins to scale to `min_size` (or
/// `desired_capacity`, if specified) by launching instances using the provided
/// Launch Configuration. These instances take time to launch and boot.
///
/// On ASG Update, changes to these values also take time to result in the target
/// number of instances providing service.
///
/// This provider provides two mechanisms to help consistently manage ASG scale up
/// time across dependent resources.
///
/// #### Waiting for ASG Capacity
///
/// The first is default behavior. This provider waits after ASG creation for
/// `min_size` (or `desired_capacity`, if specified) healthy instances to show up
/// in the ASG before continuing.
///
/// If `min_size` or `desired_capacity` are changed in a subsequent update,
/// this provider will also wait for the correct number of healthy instances before
/// continuing.
///
/// This provider considers an instance "healthy" when the ASG reports `HealthStatus:
/// "Healthy"` and `LifecycleState: "InService"`. See the [AWS AutoScaling
/// Docs](https://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/AutoScalingGroupLifecycle.html)
/// for more information on an ASG's lifecycle.
///
/// This provider will wait for healthy instances for up to
/// `wait_for_capacity_timeout`. If ASG creation is taking more than a few minutes,
/// it's worth investigating for scaling activity errors, which can be caused by
/// problems with the selected Launch Configuration.
///
/// Setting `wait_for_capacity_timeout` to `"0"` disables ASG Capacity waiting.
///
/// #### Waiting for ELB Capacity
///
/// The second mechanism is optional, and affects ASGs with attached ELBs specified
/// via the `load_balancers` attribute or with ALBs specified with `target_group_arns`.
///
/// The `min_elb_capacity` parameter causes the provider to wait for at least the
/// requested number of instances to show up `"InService"` in all attached ELBs
/// during ASG creation. It has no effect on ASG updates.
///
/// If `wait_for_elb_capacity` is set, the provider will wait for exactly that number
/// of Instances to be `"InService"` in all attached ELBs on both creation and
/// updates.
///
/// These parameters can be used to ensure that service is being provided before
/// the provider moves on. If new instances don't pass the ELB's health checks for any
/// reason, the apply will time out, and the ASG will be marked as
/// tainted (i.e., marked to be destroyed in a follow up run).
///
/// As with ASG Capacity, the provider will wait for up to `wait_for_capacity_timeout`
/// for the proper number of instances to be healthy.
///
/// #### Troubleshooting Capacity Waiting Timeouts
///
/// If ASG creation takes more than a few minutes, this could indicate one of a
/// number of configuration problems. See the [AWS Docs on Load Balancer
/// Troubleshooting](https://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-troubleshooting.html)
/// for more information.
///
/// ## Import
///
/// Using `pulumi import`, import Auto Scaling Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:autoscaling/group:Group web web-asg
/// ```
class Group extends CustomResource {
  /// ARN for this Auto Scaling Group
  late final Output<String> arn;

  /// The instance capacity distribution across Availability Zones. See Availability Zone Distribution below for more details.
  late final Output<GroupAvailabilityZoneDistribution>
      availabilityZoneDistribution;

  /// A list of Availability Zones where instances in the Auto Scaling group can be created. Used for launching into the default VPC subnet in each Availability Zone when not using the `vpc_zone_identifier` attribute, or for attaching a network interface when an existing network interface ID is specified in a launch template. Conflicts with `vpc_zone_identifier`.
  late final Output<List<String>> availabilityZones;

  /// Whether capacity rebalance is enabled. Otherwise, capacity rebalance is disabled.
  late final Output<bool?> capacityRebalance;

  /// The capacity reservation specification for the Auto Scaling group allows you to prioritize launching into On-Demand Capacity Reservations. See Capacity Reservation Specification below for more details.
  late final Output<GroupCapacityReservationSpecification>
      capacityReservationSpecification;

  /// Reserved.
  late final Output<String?> context;

  /// Amount of time, in seconds, after a scaling activity completes before another scaling activity can start.
  late final Output<int> defaultCooldown;

  /// Amount of time, in seconds, until a newly launched instance can contribute to the Amazon CloudWatch metrics. This delay lets an instance finish initializing before Amazon EC2 Auto Scaling aggregates instance metrics, resulting in more reliable usage data. Set this value equal to the amount of time that it takes for resource consumption to become stable after an instance reaches the InService state. (See [Set the default instance warmup for an Auto Scaling group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html))
  late final Output<int?> defaultInstanceWarmup;

  /// Number of Amazon EC2 instances that
  /// should be running in the group. (See also Waiting for
  /// Capacity below.)
  late final Output<int> desiredCapacity;

  /// The unit of measurement for the value specified for `desired_capacity`. Supported for attribute-based instance type selection only. Valid values: `"units"`, `"vcpu"`, `"memory-mib"`.
  late final Output<String?> desiredCapacityType;

  /// List of metrics to collect. The allowed values are defined by the [underlying AWS API](https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_EnableMetricsCollection.html).
  late final Output<List<Metric>?> enabledMetrics;

  /// Allows deleting the Auto Scaling Group without waiting
  /// for all instances in the pool to terminate. You can force an Auto Scaling Group to delete
  /// even if it's in the process of scaling a resource. Normally, this provider
  /// drains all the instances before deleting the group. This bypasses that
  /// behavior and potentially leaves resources dangling.
  late final Output<bool?> forceDelete;

  /// Allows deleting the Auto Scaling Group without waiting for all instances in the warm pool to terminate.
  late final Output<bool?> forceDeleteWarmPool;

  /// Time (in seconds) after instance comes into service before checking health.
  late final Output<int?> healthCheckGracePeriod;

  /// "EC2" or "ELB". Controls how health checking is done.
  late final Output<String> healthCheckType;

  /// Whether to ignore failed [Auto Scaling scaling activities](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-verify-scaling-activity.html) while waiting for capacity. The default is `false` -- failed scaling activities cause errors to be returned.
  late final Output<bool?> ignoreFailedScalingActivities;

  /// One or more
  /// [Lifecycle Hooks](http://docs.aws.amazon.com/autoscaling/latest/userguide/lifecycle-hooks.html)
  /// to attach to the Auto Scaling Group **before** instances are launched. The
  /// syntax is exactly the same as the separate
  /// `aws.autoscaling.LifecycleHook`
  /// resource, without the `autoscaling_group_name` attribute. Please note that this will only work when creating
  /// a new Auto Scaling Group. For all other use-cases, please use `aws.autoscaling.LifecycleHook` resource.
  late final Output<List<GroupInitialLifecycleHook>?> initialLifecycleHooks;

  /// If this block is configured, add a instance maintenance policy to the specified Auto Scaling group. Defined below.
  late final Output<GroupInstanceMaintenancePolicy?> instanceMaintenancePolicy;

  /// If this block is configured, start an
  /// [Instance Refresh](https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html)
  /// when this Auto Scaling Group is updated. Defined below.
  late final Output<GroupInstanceRefresh?> instanceRefresh;

  /// Name of the launch configuration to use.
  late final Output<String?> launchConfiguration;

  /// Nested argument with Launch template specification to use to launch instances. See Launch Template below for more details.
  late final Output<GroupLaunchTemplate> launchTemplate;

  /// List of elastic load balancer names to add to the autoscaling
  /// group names. Only valid for classic load balancers. For ALBs, use `target_group_arns` instead. To remove all load balancer attachments an empty list should be specified.
  late final Output<List<String>> loadBalancers;

  /// Maximum amount of time, in seconds, that an instance can be in service, values must be either equal to 0 or between 86400 and 31536000 seconds.
  late final Output<int?> maxInstanceLifetime;

  /// Maximum size of the Auto Scaling Group.
  late final Output<int> maxSize;

  /// Granularity to associate with the metrics to collect. The only valid value is `1Minute`. Default is `1Minute`.
  late final Output<String?> metricsGranularity;

  /// Setting this causes Pulumi to wait for
  /// this number of instances from this Auto Scaling Group to show up healthy in the
  /// ELB only on creation. Updates will not wait on ELB instance number changes.
  /// (See also Waiting for Capacity below.)
  late final Output<int?> minElbCapacity;

  /// Minimum size of the Auto Scaling Group.
  /// (See also Waiting for Capacity below.)
  late final Output<int> minSize;

  /// Configuration block containing settings to define launch targets for Auto Scaling groups. See Mixed Instances Policy below for more details.
  late final Output<GroupMixedInstancesPolicy> mixedInstancesPolicy;

  /// Name of the Auto Scaling Group. By default generated by Pulumi. Conflicts with `name_prefix`.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// Name of the placement group into which you'll launch your instances, if any.
  late final Output<String?> placementGroup;

  /// Predicted capacity of the group.
  late final Output<int> predictedCapacity;

  /// Whether newly launched instances
  /// are automatically protected from termination by Amazon EC2 Auto Scaling when
  /// scaling in. For more information about preventing instances from terminating
  /// on scale in, see [Using instance scale-in protection](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html)
  /// in the Amazon EC2 Auto Scaling User Guide.
  late final Output<bool?> protectFromScaleIn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the service-linked role that the ASG will use to call other AWS services
  late final Output<String> serviceLinkedRoleArn;

  /// List of processes to suspend for the Auto Scaling Group. The allowed values are `Launch`, `Terminate`, `HealthCheck`, `ReplaceUnhealthy`, `AZRebalance`, `AlarmNotification`, `ScheduledActions`, `AddToLoadBalancer`, `InstanceRefresh`.
  /// Note that if you suspend either the `Launch` or `Terminate` process types, it can prevent your Auto Scaling Group from functioning properly.
  late final Output<List<String>?> suspendedProcesses;

  /// Configuration block(s) containing resource tags. See Tag below for more details.
  late final Output<List<GroupTag>?> tags;

  /// Set of `aws.lb.TargetGroup` ARNs, for use with Application or Network Load Balancing. To remove all target group attachments an empty list should be specified.
  late final Output<List<String>> targetGroupArns;

  /// List of policies to decide how the instances in the Auto Scaling Group should be terminated. The allowed values are `OldestInstance`, `NewestInstance`, `OldestLaunchConfiguration`, `ClosestToNextInstanceHour`, `OldestLaunchTemplate`, `AllocationStrategy`, `Default`. Additionally, the ARN of a Lambda function can be specified for custom termination policies.
  late final Output<List<String>?> terminationPolicies;

  /// Attaches one or more traffic sources to the specified Auto Scaling group.
  late final Output<List<GroupTrafficSource>> trafficSources;

  /// List of subnet IDs to launch resources in. Subnets automatically determine which availability zones the group will reside. Conflicts with `availability_zones`.
  late final Output<List<String>> vpcZoneIdentifiers;

  /// Maximum
  /// [duration](https://golang.org/pkg/time/#ParseDuration) that the provider should
  /// wait for ASG instances to be healthy before timing out. (See also Waiting
  /// for Capacity below.) Setting this to "0" causes
  /// the provider to skip all Capacity Waiting behavior.
  late final Output<String?> waitForCapacityTimeout;

  /// Setting this will cause Pulumi to wait
  /// for exactly this number of healthy instances from this Auto Scaling Group in
  /// all attached load balancers on both create and update operations. (Takes
  /// precedence over `min_elb_capacity` behavior.)
  /// (See also Waiting for Capacity below.)
  late final Output<int?> waitForElbCapacity;

  /// If this block is configured, add a [Warm Pool](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html)
  /// to the specified Auto Scaling group. Defined below
  late final Output<GroupWarmPool?> warmPool;

  /// Current size of the warm pool.
  late final Output<int> warmPoolSize;

  Group(
    String name, {
    GroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/group:Group',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZoneDistribution =
        registerOutput<GroupAvailabilityZoneDistribution>(
            'availabilityZoneDistribution');
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.capacityRebalance = registerOutput<bool?>('capacityRebalance');
    this.capacityReservationSpecification =
        registerOutput<GroupCapacityReservationSpecification>(
            'capacityReservationSpecification');
    this.context = registerOutput<String?>('context');
    this.defaultCooldown = registerOutput<int>('defaultCooldown');
    this.defaultInstanceWarmup = registerOutput<int?>('defaultInstanceWarmup');
    this.desiredCapacity = registerOutput<int>('desiredCapacity');
    this.desiredCapacityType = registerOutput<String?>('desiredCapacityType');
    this.enabledMetrics = registerOutput<List<Metric>?>('enabledMetrics');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.forceDeleteWarmPool = registerOutput<bool?>('forceDeleteWarmPool');
    this.healthCheckGracePeriod =
        registerOutput<int?>('healthCheckGracePeriod');
    this.healthCheckType = registerOutput<String>('healthCheckType');
    this.ignoreFailedScalingActivities =
        registerOutput<bool?>('ignoreFailedScalingActivities');
    this.initialLifecycleHooks =
        registerOutput<List<GroupInitialLifecycleHook>?>(
            'initialLifecycleHooks');
    this.instanceMaintenancePolicy =
        registerOutput<GroupInstanceMaintenancePolicy?>(
            'instanceMaintenancePolicy');
    this.instanceRefresh =
        registerOutput<GroupInstanceRefresh?>('instanceRefresh');
    this.launchConfiguration = registerOutput<String?>('launchConfiguration');
    this.launchTemplate = registerOutput<GroupLaunchTemplate>('launchTemplate');
    this.loadBalancers = registerOutput<List<String>>('loadBalancers');
    this.maxInstanceLifetime = registerOutput<int?>('maxInstanceLifetime');
    this.maxSize = registerOutput<int>('maxSize');
    this.metricsGranularity = registerOutput<String?>('metricsGranularity');
    this.minElbCapacity = registerOutput<int?>('minElbCapacity');
    this.minSize = registerOutput<int>('minSize');
    this.mixedInstancesPolicy =
        registerOutput<GroupMixedInstancesPolicy>('mixedInstancesPolicy');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.placementGroup = registerOutput<String?>('placementGroup');
    this.predictedCapacity = registerOutput<int>('predictedCapacity');
    this.protectFromScaleIn = registerOutput<bool?>('protectFromScaleIn');
    this.region = registerOutput<String>('region');
    this.serviceLinkedRoleArn = registerOutput<String>('serviceLinkedRoleArn');
    this.suspendedProcesses =
        registerOutput<List<String>?>('suspendedProcesses');
    this.tags = registerOutput<List<GroupTag>?>('tags');
    this.targetGroupArns = registerOutput<List<String>>('targetGroupArns');
    this.terminationPolicies =
        registerOutput<List<String>?>('terminationPolicies');
    this.trafficSources =
        registerOutput<List<GroupTrafficSource>>('trafficSources');
    this.vpcZoneIdentifiers =
        registerOutput<List<String>>('vpcZoneIdentifiers');
    this.waitForCapacityTimeout =
        registerOutput<String?>('waitForCapacityTimeout');
    this.waitForElbCapacity = registerOutput<int?>('waitForElbCapacity');
    this.warmPool = registerOutput<GroupWarmPool?>('warmPool');
    this.warmPoolSize = registerOutput<int>('warmPoolSize');
  }
}
