import 'package:pulumi/pulumi.dart';
import '../spot_fleet_request_launch_specification/spot_fleet_request_launch_specification.dart';
import '../spot_fleet_request_launch_template_config/spot_fleet_request_launch_template_config.dart';
import '../spot_fleet_request_spot_maintenance_strategies/spot_fleet_request_spot_maintenance_strategies.dart';
import 'spot_fleet_request_args.dart';

/// Provides an EC2 Spot Fleet Request resource. This allows a fleet of Spot
/// instances to be requested on the Spot market.
///
/// > **NOTE [AWS strongly discourages](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-best-practices.html#which-spot-request-method-to-use) the use of the legacy APIs called by this resource.
/// We recommend using the EC2 Fleet or Auto Scaling Group resources instead.
///
/// ## Example Usage
///
/// ### Using launch specifications
///
///
///
/// ### Using launch templates
///
///
///
/// > **NOTE:** This provider does not support the functionality where multiple `subnet_id` or `availability_zone` parameters can be specified in the same
/// launch configuration block. If you want to specify multiple values, then separate launch configuration blocks should be used or launch template overrides should be configured, one per subnet:
///
/// ### Using multiple launch specifications
///
///
///
/// > In this example, we use a `dynamic` block to define zero or more `launch_specification` blocks, producing one for each element in the list of subnet ids.
///
///
///
/// ### Using multiple launch configurations
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Spot Fleet Requests using `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/spotFleetRequest:SpotFleetRequest fleet sfr-005e9ec8-5546-4c31-b317-31a62325411e
/// ```
class SpotFleetRequest extends CustomResource {
  /// Indicates how to allocate the target capacity across
  /// the Spot pools specified by the Spot fleet request. Valid values: `lowestPrice`, `diversified`, `capacityOptimized`, `capacityOptimizedPrioritized`, and `priceCapacityOptimized`. The default is
  /// `lowestPrice`.
  late final Output<String?> allocationStrategy;
  late final Output<String> clientToken;

  /// Reserved.
  late final Output<String?> context;

  /// Indicates whether running Spot
  /// instances should be terminated if the target capacity of the Spot fleet
  /// request is decreased below the current size of the Spot fleet.
  late final Output<String?> excessCapacityTerminationPolicy;

  /// The type of fleet request. Indicates whether the Spot Fleet only requests the target
  /// capacity or also attempts to maintain it. Default is `maintain`.
  late final Output<String?> fleetType;

  /// Grants the Spot fleet permission to terminate
  /// Spot instances on your behalf when you cancel its Spot fleet request using
  /// CancelSpotFleetRequests or when the Spot fleet request expires, if you set
  /// terminateInstancesWithExpiration.
  late final Output<String> iamFleetRole;

  /// Indicates whether a Spot
  /// instance stops or terminates when it is interrupted. Default is
  /// `terminate`.
  late final Output<String?> instanceInterruptionBehaviour;

  /// The number of Spot pools across which to allocate your target Spot capacity.
  /// Valid only when `allocation_strategy` is set to `lowestPrice`. Spot Fleet selects
  /// the cheapest Spot pools and evenly allocates your target Spot capacity across
  /// the number of Spot pools that you specify.
  late final Output<int?> instancePoolsToUseCount;

  /// Used to define the launch configuration of the
  /// spot-fleet request. Can be specified multiple times to define different bids
  /// across different markets and instance types. Conflicts with `launch_template_config`. At least one of `launch_specification` or `launch_template_config` is required.
  ///
  /// **Note**: This takes in similar but not
  /// identical inputs as `aws.ec2.Instance`.  There are limitations on
  /// what you can specify. See the list of officially supported inputs in the
  /// [reference documentation](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SpotFleetLaunchSpecification.html). Any normal `aws.ec2.Instance` parameter that corresponds to those inputs may be used and it have
  /// a additional parameter `iam_instance_profile_arn` takes `aws.iam.InstanceProfile` attribute `arn` as input.
  late final Output<List<SpotFleetRequestLaunchSpecification>?>
      launchSpecifications;

  /// Launch template configuration block. See Launch Template Configs below for more details. Conflicts with `launch_specification`. At least one of `launch_specification` or `launch_template_config` is required.
  late final Output<List<SpotFleetRequestLaunchTemplateConfig>?>
      launchTemplateConfigs;

  /// A list of elastic load balancer names to add to the Spot fleet.
  late final Output<List<String>> loadBalancers;

  /// The order of the launch template overrides to use in fulfilling On-Demand capacity. the possible values are: `lowestPrice` and `prioritized`. the default is `lowestPrice`.
  late final Output<String?> onDemandAllocationStrategy;

  /// The maximum amount per hour for On-Demand Instances that you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity.
  late final Output<String?> onDemandMaxTotalPrice;

  /// The number of On-Demand units to request. If the request type is `maintain`, you can specify a target capacity of 0 and add capacity later.
  late final Output<int?> onDemandTargetCapacity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Indicates whether Spot fleet should replace unhealthy instances. Default `false`.
  late final Output<bool?> replaceUnhealthyInstances;

  /// Nested argument containing maintenance strategies for managing your Spot Instances that are at an elevated risk of being interrupted. Defined below.
  late final Output<SpotFleetRequestSpotMaintenanceStrategies?>
      spotMaintenanceStrategies;

  /// The maximum bid price per unit hour.
  late final Output<String?> spotPrice;

  /// The state of the Spot fleet request.
  late final Output<String> spotRequestState;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The number of units to request. You can choose to set the
  /// target capacity in terms of instances or a performance characteristic that is
  /// important to your application workload, such as vCPUs, memory, or I/O.
  late final Output<int> targetCapacity;

  /// The unit for the target capacity. This can only be done with `instance_requirements` defined
  late final Output<String?> targetCapacityUnitType;

  /// A list of `aws.alb.TargetGroup` ARNs, for use with Application Load Balancing.
  late final Output<List<String>> targetGroupArns;

  /// Indicates whether running Spot
  /// instances should be terminated when the resource is deleted (and the Spot fleet request cancelled).
  /// If no value is specified, the value of the `terminate_instances_with_expiration` argument is used.
  late final Output<String?> terminateInstancesOnDelete;

  /// Indicates whether running Spot
  /// instances should be terminated when the Spot fleet request expires.
  late final Output<bool?> terminateInstancesWithExpiration;

  /// The start date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  late final Output<String?> validFrom;

  /// The end date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new Spot instance requests are placed or enabled to fulfill the request.
  late final Output<String?> validUntil;

  /// If set, this provider will
  /// wait for the Spot Request to be fulfilled, and will throw an error if the
  /// timeout of 10m is reached.
  late final Output<bool?> waitForFulfillment;

  SpotFleetRequest(
    String name, {
    SpotFleetRequestArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/spotFleetRequest:SpotFleetRequest',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allocationStrategy = registerOutput<String?>('allocationStrategy');
    this.clientToken = registerOutput<String>('clientToken');
    this.context = registerOutput<String?>('context');
    this.excessCapacityTerminationPolicy =
        registerOutput<String?>('excessCapacityTerminationPolicy');
    this.fleetType = registerOutput<String?>('fleetType');
    this.iamFleetRole = registerOutput<String>('iamFleetRole');
    this.instanceInterruptionBehaviour =
        registerOutput<String?>('instanceInterruptionBehaviour');
    this.instancePoolsToUseCount =
        registerOutput<int?>('instancePoolsToUseCount');
    this.launchSpecifications =
        registerOutput<List<SpotFleetRequestLaunchSpecification>?>(
            'launchSpecifications');
    this.launchTemplateConfigs =
        registerOutput<List<SpotFleetRequestLaunchTemplateConfig>?>(
            'launchTemplateConfigs');
    this.loadBalancers = registerOutput<List<String>>('loadBalancers');
    this.onDemandAllocationStrategy =
        registerOutput<String?>('onDemandAllocationStrategy');
    this.onDemandMaxTotalPrice =
        registerOutput<String?>('onDemandMaxTotalPrice');
    this.onDemandTargetCapacity =
        registerOutput<int?>('onDemandTargetCapacity');
    this.region = registerOutput<String>('region');
    this.replaceUnhealthyInstances =
        registerOutput<bool?>('replaceUnhealthyInstances');
    this.spotMaintenanceStrategies =
        registerOutput<SpotFleetRequestSpotMaintenanceStrategies?>(
            'spotMaintenanceStrategies');
    this.spotPrice = registerOutput<String?>('spotPrice');
    this.spotRequestState = registerOutput<String>('spotRequestState');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetCapacity = registerOutput<int>('targetCapacity');
    this.targetCapacityUnitType =
        registerOutput<String?>('targetCapacityUnitType');
    this.targetGroupArns = registerOutput<List<String>>('targetGroupArns');
    this.terminateInstancesOnDelete =
        registerOutput<String?>('terminateInstancesOnDelete');
    this.terminateInstancesWithExpiration =
        registerOutput<bool?>('terminateInstancesWithExpiration');
    this.validFrom = registerOutput<String?>('validFrom');
    this.validUntil = registerOutput<String?>('validUntil');
    this.waitForFulfillment = registerOutput<bool?>('waitForFulfillment');
  }
}
