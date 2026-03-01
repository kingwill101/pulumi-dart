import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_load_balancer_args.dart';
import 'application_load_balancer_state.dart';

/// ## Import
///
/// Load balancer can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:slb/applicationLoadBalancer:ApplicationLoadBalancer example lb-abc123456
/// ```
class ApplicationLoadBalancer extends pulumi.CustomResource {
  /// Specify the IP address of the private network for the SLB instance, which must be in the destination CIDR block of the corresponding switch.
  late final pulumi.Output<String> address;
  /// The IP version of the SLB instance to be created, which can be set to `ipv4` or `ipv6` . Default to `ipv4`. Now, only internet instance support `ipv6` address.
  late final pulumi.Output<String?> addressIpVersion;
  /// The network type of the SLB instance. Valid values: ["internet", "intranet"]. If load balancer launched in VPC, this value must be `intranet`.
  /// - internet: After an Internet SLB instance is created, the system allocates a public IP address so that the instance can forward requests from the Internet.
  /// - intranet: After an intranet SLB instance is created, the system allocates an intranet IP address so that the instance can only forward intranet requests.
  late final pulumi.Output<String> addressType;
  /// Valid value is between 1 and 5120, If argument `internet_charge_type` is `PayByTraffic`, then this value will be ignored.
  late final pulumi.Output<int?> bandwidth;
  /// Whether enable the deletion protection or not. on: Enable deletion protection. off: Disable deletion protection. Default to off. Only postpaid instance support this function.
  late final pulumi.Output<String?> deleteProtection;
  /// Support `PayBySpec` (default) and `PayByCLCU`, This parameter takes effect when the value of **payment_type** (instance payment mode) is **PayAsYouGo** (pay-as-you-go).
  late final pulumi.Output<String> instanceChargeType;
  /// Valid values are `PayByBandwidth`, `PayByTraffic`. If this value is `PayByBandwidth`, then argument `address_type` must be `internet`. Default is `PayByTraffic`. If load balancer launched in VPC, this value must be `PayByTraffic`. Before version 1.10.1, the valid values are `paybybandwidth` and `paybytraffic`.
  late final pulumi.Output<String?> internetChargeType;
  late final pulumi.Output<String> loadBalancerName;
  /// The specification of the Server Load Balancer instance. Default to empty string indicating it is "Shared-Performance" instance.
  /// Launching "Performance-guaranteed" instance, it must be specified. Valid values: `slb.s1.small`, `slb.s2.small`, `slb.s2.medium`,
  /// `slb.s3.small`, `slb.s3.medium`, `slb.s3.large` and `slb.s4.large`. It will be ignored when `instance_charge_type = "PayByCLCU"`.
  late final pulumi.Output<String> loadBalancerSpec;
  /// The primary zone ID of the SLB instance. If not specified, the system will be randomly assigned. You can query the primary and standby zones in a region by calling the [DescribeZone](https://help.aliyun.com/document_detail/27585.htm) API.
  late final pulumi.Output<String> masterZoneId;
  /// The reason of modification protection. It's effective when `modification_protection_status` is `ConsoleProtection`.
  late final pulumi.Output<String?> modificationProtectionReason;
  /// The status of modification protection. Valid values: `ConsoleProtection` and `NonProtection`. Default value is `NonProtection`.
  late final pulumi.Output<String> modificationProtectionStatus;
  /// Field `name` has been deprecated from provider version 1.123.1 New field `load_balancer_name` instead.
  late final pulumi.Output<String> name;
  /// The billing method of the load balancer. Valid values are `PayAsYouGo` and `Subscription`. Default to `PayAsYouGo`.
  late final pulumi.Output<String> paymentType;
  /// The duration that you will buy the resource, in month. It is valid when `PaymentType` is `Subscription`. Default to 1. Valid values: [1-9, 12, 24, 36]. This attribute is only used to create `Subscription` instance or modify the `PayAsYouGo` instance to `Subscription`. Once effect, it will not be modified that means running `pulumi up` will not affect the resource.
  late final pulumi.Output<int?> period;
  /// The id of resource group which the SLB belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// The standby zone ID of the SLB instance. If not specified, the system will be randomly assigned. You can query the primary and standby zones in a region by calling the DescribeZone API.
  late final pulumi.Output<String> slaveZoneId;
  /// Field `specification` has been deprecated from provider version 1.123.1 New field `load_balancer_spec` instead.
  late final pulumi.Output<String> specification;
  /// The status of slb load balancer. Valid values: `active` and `inactice`. The system default value is `active`.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource. The `tags` can have a maximum of 10 tag for every load balancer instance. This filed mark as `Computed` since v1.217.1.
  late final pulumi.Output<Map<String, String>> tags;
  /// The VSwitch ID to launch in. **Note:** Required for a VPC SLB. If `address_type` is internet, it will be ignored.
  late final pulumi.Output<String?> vswitchId;

  /// Creates a new [ApplicationLoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationLoadBalancer]. {@macro pulumi_slb_application_load_balancer_application_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationLoadBalancer(
    String name, {
    ApplicationLoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/applicationLoadBalancer:ApplicationLoadBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.addressIpVersion = registerOutput<String?>('addressIpVersion');
    this.addressType = registerOutput<String>('addressType');
    this.bandwidth = registerOutput<int?>('bandwidth');
    this.deleteProtection = registerOutput<String?>('deleteProtection');
    this.instanceChargeType = registerOutput<String>('instanceChargeType');
    this.internetChargeType = registerOutput<String?>('internetChargeType');
    this.loadBalancerName = registerOutput<String>('loadBalancerName');
    this.loadBalancerSpec = registerOutput<String>('loadBalancerSpec');
    this.masterZoneId = registerOutput<String>('masterZoneId');
    this.modificationProtectionReason = registerOutput<String?>('modificationProtectionReason');
    this.modificationProtectionStatus = registerOutput<String>('modificationProtectionStatus');
    this.name = registerOutput<String>('name');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.slaveZoneId = registerOutput<String>('slaveZoneId');
    this.specification = registerOutput<String>('specification');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>>('tags');
    this.vswitchId = registerOutput<String?>('vswitchId');
  }

  /// Gets an existing [ApplicationLoadBalancer] resource's state with the given [name] and [id].
  static ApplicationLoadBalancer get(
    String name,
    pulumi.Input<String> id, {
    ApplicationLoadBalancerState? state,
  }) {
    return ApplicationLoadBalancer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationLoadBalancer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/applicationLoadBalancer:ApplicationLoadBalancer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.addressIpVersion = registerOutput<String?>('addressIpVersion');
    this.addressType = registerOutput<String>('addressType');
    this.bandwidth = registerOutput<int?>('bandwidth');
    this.deleteProtection = registerOutput<String?>('deleteProtection');
    this.instanceChargeType = registerOutput<String>('instanceChargeType');
    this.internetChargeType = registerOutput<String?>('internetChargeType');
    this.loadBalancerName = registerOutput<String>('loadBalancerName');
    this.loadBalancerSpec = registerOutput<String>('loadBalancerSpec');
    this.masterZoneId = registerOutput<String>('masterZoneId');
    this.modificationProtectionReason = registerOutput<String?>('modificationProtectionReason');
    this.modificationProtectionStatus = registerOutput<String>('modificationProtectionStatus');
    this.name = registerOutput<String>('name');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.slaveZoneId = registerOutput<String>('slaveZoneId');
    this.specification = registerOutput<String>('specification');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>>('tags');
    this.vswitchId = registerOutput<String?>('vswitchId');
  }
}
