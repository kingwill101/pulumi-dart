import 'package:pulumi/pulumi.dart' as pulumi;
import '../nat_gateway_availability_zone_address/nat_gateway_availability_zone_address.dart';
import '../nat_gateway_regional_nat_gateway_address/nat_gateway_regional_nat_gateway_address.dart';
import 'nat_gateway_args.dart';

/// Provides a resource to create a VPC NAT Gateway.
///
/// !> **WARNING:** You should not use the `aws.ec2.NatGateway` resource that has `secondary_allocation_ids` in conjunction with an `aws.ec2.NatGatewayEipAssociation` resource. Doing so may cause perpetual differences, and result in associations being overwritten.
///
/// ## Example Usage
///
/// ### Public NAT
///
///
///
/// ### Public NAT with Secondary Private IP Addresses
///
///
///
/// ### Private NAT
///
///
///
/// ### Private NAT with Secondary Private IP Addresses
///
///
///
/// ### Regional NAT Gateway with auto mode
///
///
///
/// ### Regional NAT Gateway with manual mode
///
///
///
/// ## Import
///
/// Using `pulumi import`, import NAT Gateways using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/natGateway:NatGateway private_gw nat-05dba92075d71c408
/// ```
class NatGateway extends pulumi.CustomResource {
  /// The Allocation ID of the Elastic IP address for the NAT Gateway. Required when `connectivity_type` is set to `public` and `availability_mode` is set to `zonal`. When `availability_mode` is set to `regional`, this must not be set; instead, use the `availability_zone_address` block to specify EIPs for each AZ.
  late final pulumi.Output<String?> allocationId;

  /// Association ID of the Elastic IP address.
  late final pulumi.Output<String> associationId;

  /// (regional NAT gateways only) Indicates whether AWS automatically manages AZ coverage.
  late final pulumi.Output<String> autoProvisionZones;

  /// (regional NAT gateways only) Indicates whether AWS automatically allocates additional Elastic IP addresses (EIPs) in an AZ when the NAT gateway needs more ports due to increased concurrent connections to a single destination from that AZ.
  late final pulumi.Output<String> autoScalingIps;

  /// Specifies whether to create a zonal (single-AZ) or regional (multi-AZ) NAT gateway. Valid values are `zonal` and `regional`. Defaults to `zonal`.
  late final pulumi.Output<String> availabilityMode;

  /// Repeatable configuration block for the Elastic IP addresses (EIPs) and availability zones for the regional NAT gateway. When not specified, the regional NAT gateway will automatically expand to new AZs and associate EIPs upon detection of an elastic network interface (auto mode). When specified, auto-expansion is disabled (manual mode). See `availability_zone_address` below for details.
  late final pulumi.Output<List<NatGatewayAvailabilityZoneAddress>?>
      availabilityZoneAddresses;

  /// Connectivity type for the NAT Gateway. Valid values are `private` and `public`. When `availability_mode` is set to `regional`, this must be set to `public`. Defaults to `public`.
  late final pulumi.Output<String?> connectivityType;

  /// ID of the network interface.
  late final pulumi.Output<String> networkInterfaceId;

  /// The private IPv4 address to assign to the NAT Gateway. If you don't provide an address, a private IPv4 address will be automatically assigned.
  late final pulumi.Output<String> privateIp;

  /// Public IP address.
  late final pulumi.Output<String> publicIp;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// (regional NAT gateways only) Repeatable blocks for information about the IP addresses and network interface associated with the regional NAT gateway.
  late final pulumi.Output<List<NatGatewayRegionalNatGatewayAddress>>
      regionalNatGatewayAddresses;
  late final pulumi.Output<String> regionalNatGatewayAutoMode;

  /// (regional NAT gateways only) ID of the automatically created route table.
  late final pulumi.Output<String> routeTableId;

  /// A list of secondary allocation EIP IDs for this NAT Gateway. To remove all secondary allocations an empty list should be specified.
  late final pulumi.Output<List<String>> secondaryAllocationIds;

  /// The number of secondary private IPv4 addresses you want to assign to the NAT Gateway.
  late final pulumi.Output<int> secondaryPrivateIpAddressCount;

  /// A list of secondary private IPv4 addresses to assign to the NAT Gateway. To remove all secondary private addresses an empty list should be specified.
  late final pulumi.Output<List<String>> secondaryPrivateIpAddresses;

  /// The Subnet ID of the subnet in which to place the NAT Gateway. Required when `availability_mode` is set to `zonal`. Must not be set when `availability_mode` is set to `regional`.
  late final pulumi.Output<String?> subnetId;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// VPC ID where this NAT Gateway will be created. Required when `availability_mode` is set to `regional`.
  late final pulumi.Output<String> vpcId;

  NatGateway(
    String name, {
    NatGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/natGateway:NatGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocationId = registerOutput<String?>('allocationId');
    this.associationId = registerOutput<String>('associationId');
    this.autoProvisionZones = registerOutput<String>('autoProvisionZones');
    this.autoScalingIps = registerOutput<String>('autoScalingIps');
    this.availabilityMode = registerOutput<String>('availabilityMode');
    this.availabilityZoneAddresses =
        registerOutput<List<NatGatewayAvailabilityZoneAddress>?>(
            'availabilityZoneAddresses');
    this.connectivityType = registerOutput<String?>('connectivityType');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.privateIp = registerOutput<String>('privateIp');
    this.publicIp = registerOutput<String>('publicIp');
    this.region = registerOutput<String>('region');
    this.regionalNatGatewayAddresses =
        registerOutput<List<NatGatewayRegionalNatGatewayAddress>>(
            'regionalNatGatewayAddresses');
    this.regionalNatGatewayAutoMode =
        registerOutput<String>('regionalNatGatewayAutoMode');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.secondaryAllocationIds =
        registerOutput<List<String>>('secondaryAllocationIds');
    this.secondaryPrivateIpAddressCount =
        registerOutput<int>('secondaryPrivateIpAddressCount');
    this.secondaryPrivateIpAddresses =
        registerOutput<List<String>>('secondaryPrivateIpAddresses');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
