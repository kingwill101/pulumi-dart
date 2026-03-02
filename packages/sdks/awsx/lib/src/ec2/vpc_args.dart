// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_configuration.dart';
import 'subnet_allocation_strategy.dart';
import 'subnet_spec.dart';
import 'vpc_endpoint_spec.dart';

/// {@template pulumi_ec2_vpc_args_doc}
/// The set of arguments for Vpc.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_args_doc}
class VpcArgs {
  /// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block. Default is `false`. Conflicts with `ipv6_ipam_pool_id`
  final pulumi.Input<bool>? assignGeneratedIpv6CidrBlock;
  /// The netmask for each available zone to be aligned to. This is optional, the default value is inferred based on an even distribution of available space from the VPC's CIDR block after being divided evenly by the number of availability zones.
  final pulumi.Input<int>? availabilityZoneCidrMask;
  /// A list of availability zone names to which the subnets defined in subnetSpecs will be deployed. Optional, defaults to the first 3 AZs in the current region.
  final pulumi.Input<List<String>>? availabilityZoneNames;
  /// The CIDR block for the VPC. Optional. Defaults to 10.0.0.0/16.
  final pulumi.Input<String>? cidrBlock;
  /// A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false.
  final pulumi.Input<bool>? enableDnsHostnames;
  /// A boolean flag to enable/disable DNS support in the VPC. Defaults to true.
  final pulumi.Input<bool>? enableDnsSupport;
  /// Indicates whether Network Address Usage metrics are enabled for your VPC. Defaults to false.
  final pulumi.Input<bool>? enableNetworkAddressUsageMetrics;
  /// A tenancy option for instances launched into the VPC. Default is `default`, which ensures that EC2 instances launched in this VPC use the EC2 instance tenancy attribute specified when the EC2 instance is launched. The only other option is `dedicated`, which ensures that EC2 instances launched in this VPC are run on dedicated tenancy instances regardless of the tenancy attribute specified at launch. This has a dedicated per region fee of $2 per hour, plus an hourly per instance usage fee.
  final pulumi.Input<String>? instanceTenancy;
  /// The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Using IPAM you can monitor IP address usage throughout your AWS Organization.
  final pulumi.Input<String>? ipv4IpamPoolId;
  /// The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a `ipv4_ipam_pool_id`.
  final pulumi.Input<int>? ipv4NetmaskLength;
  /// IPv6 CIDR block to request from an IPAM Pool. Can be set explicitly or derived from IPAM using `ipv6_netmask_length`.
  final pulumi.Input<String>? ipv6CidrBlock;
  /// By default when an IPv6 CIDR is assigned to a VPC a default ipv6_cidr_block_network_border_group will be set to the region of the VPC. This can be changed to restrict advertisement of public addresses to specific Network Border Groups such as LocalZones.
  final pulumi.Input<String>? ipv6CidrBlockNetworkBorderGroup;
  /// IPAM Pool ID for a IPv6 pool. Conflicts with `assign_generated_ipv6_cidr_block`.
  final pulumi.Input<String>? ipv6IpamPoolId;
  /// Netmask length to request from IPAM Pool. Conflicts with `ipv6_cidr_block`. This can be omitted if IPAM pool as a `allocation_default_netmask_length` set. Valid values are from `44` to `60` in increments of 4.
  final pulumi.Input<int>? ipv6NetmaskLength;
  /// Configuration for NAT Gateways. Optional. If private and public subnets are both specified, defaults to one gateway per availability zone. Otherwise, no gateways will be created.
  final pulumi.Input<NatGatewayConfiguration>? natGateways;
  /// A number of availability zones to which the subnets defined in subnetSpecs will be deployed. Optional, defaults to the first 3 AZs in the current region.
  final pulumi.Input<int>? numberOfAvailabilityZones;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of subnet specs that should be deployed to each AZ specified in availabilityZoneNames. Optional. Defaults to a (smaller) public subnet and a (larger) private subnet based on the size of the CIDR block for the VPC. Private subnets are allocated CIDR block ranges first, followed by Public subnets, and Isolated subnets are allocated last.
  final pulumi.Input<List<SubnetSpec>>? subnetSpecs;
  /// The strategy to use when allocating subnets for the VPC. Optional. Defaults to `Legacy`.
  final pulumi.Input<SubnetAllocationStrategy>? subnetStrategy;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of VPC Endpoints specs to be deployed as part of the VPC
  final pulumi.Input<List<VpcEndpointSpec>>? vpcEndpointSpecs;

  /// Creates a new [VpcArgs].
  /// [assignGeneratedIpv6CidrBlock] Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block. Default is `false`. Conflicts with `ipv6_ipam_pool_id`
  /// [availabilityZoneCidrMask] The netmask for each available zone to be aligned to. This is optional, the default value is inferred based on an even distribution of available space from the VPC's CIDR block after being divided evenly by the number of availability zones.
  /// [availabilityZoneNames] A list of availability zone names to which the subnets defined in subnetSpecs will be deployed. Optional, defaults to the first 3 AZs in the current region.
  /// [cidrBlock] The CIDR block for the VPC. Optional. Defaults to 10.0.0.0/16.
  /// [enableDnsHostnames] A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false.
  /// [enableDnsSupport] A boolean flag to enable/disable DNS support in the VPC. Defaults to true.
  /// [enableNetworkAddressUsageMetrics] Indicates whether Network Address Usage metrics are enabled for your VPC. Defaults to false.
  /// [instanceTenancy] A tenancy option for instances launched into the VPC. Default is `default`, which ensures that EC2 instances launched in this VPC use the EC2 instance tenancy attribute specified when the EC2 instance is launched. The only other option is `dedicated`, which ensures that EC2 instances launched in this VPC are run on dedicated tenancy instances regardless of the tenancy attribute specified at launch. This has a dedicated per region fee of $2 per hour, plus an hourly per instance usage fee.
  /// [ipv4IpamPoolId] The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Using IPAM you can monitor IP address usage throughout your AWS Organization.
  /// [ipv4NetmaskLength] The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a `ipv4_ipam_pool_id`.
  /// [ipv6CidrBlock] IPv6 CIDR block to request from an IPAM Pool. Can be set explicitly or derived from IPAM using `ipv6_netmask_length`.
  /// [ipv6CidrBlockNetworkBorderGroup] By default when an IPv6 CIDR is assigned to a VPC a default ipv6_cidr_block_network_border_group will be set to the region of the VPC. This can be changed to restrict advertisement of public addresses to specific Network Border Groups such as LocalZones.
  /// [ipv6IpamPoolId] IPAM Pool ID for a IPv6 pool. Conflicts with `assign_generated_ipv6_cidr_block`.
  /// [ipv6NetmaskLength] Netmask length to request from IPAM Pool. Conflicts with `ipv6_cidr_block`. This can be omitted if IPAM pool as a `allocation_default_netmask_length` set. Valid values are from `44` to `60` in increments of 4.
  /// [natGateways] Configuration for NAT Gateways. Optional. If private and public subnets are both specified, defaults to one gateway per availability zone. Otherwise, no gateways will be created.
  /// [numberOfAvailabilityZones] A number of availability zones to which the subnets defined in subnetSpecs will be deployed. Optional, defaults to the first 3 AZs in the current region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetSpecs] A list of subnet specs that should be deployed to each AZ specified in availabilityZoneNames. Optional. Defaults to a (smaller) public subnet and a (larger) private subnet based on the size of the CIDR block for the VPC. Private subnets are allocated CIDR block ranges first, followed by Public subnets, and Isolated subnets are allocated last.
  /// [subnetStrategy] The strategy to use when allocating subnets for the VPC. Optional. Defaults to `Legacy`.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcEndpointSpecs] A list of VPC Endpoints specs to be deployed as part of the VPC
  VpcArgs({
    this.assignGeneratedIpv6CidrBlock,
    this.availabilityZoneCidrMask,
    this.availabilityZoneNames,
    this.cidrBlock,
    this.enableDnsHostnames,
    this.enableDnsSupport,
    this.enableNetworkAddressUsageMetrics,
    this.instanceTenancy,
    this.ipv4IpamPoolId,
    this.ipv4NetmaskLength,
    this.ipv6CidrBlock,
    this.ipv6CidrBlockNetworkBorderGroup,
    this.ipv6IpamPoolId,
    this.ipv6NetmaskLength,
    this.natGateways,
    this.numberOfAvailabilityZones,
    this.region,
    this.subnetSpecs,
    this.subnetStrategy,
    this.tags,
    this.vpcEndpointSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignGeneratedIpv6CidrBlock': ?assignGeneratedIpv6CidrBlock,
      'availabilityZoneCidrMask': ?availabilityZoneCidrMask,
      'availabilityZoneNames': ?availabilityZoneNames,
      'cidrBlock': ?cidrBlock,
      'enableDnsHostnames': ?enableDnsHostnames,
      'enableDnsSupport': ?enableDnsSupport,
      'enableNetworkAddressUsageMetrics': ?enableNetworkAddressUsageMetrics,
      'instanceTenancy': ?instanceTenancy,
      'ipv4IpamPoolId': ?ipv4IpamPoolId,
      'ipv4NetmaskLength': ?ipv4NetmaskLength,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'ipv6CidrBlockNetworkBorderGroup': ?ipv6CidrBlockNetworkBorderGroup,
      'ipv6IpamPoolId': ?ipv6IpamPoolId,
      'ipv6NetmaskLength': ?ipv6NetmaskLength,
      'natGateways': ?pulumi.Input.mapOptionalInputValue<NatGatewayConfiguration, Map<String, dynamic>>(natGateways, (value) => value.toMap()),
      'numberOfAvailabilityZones': ?numberOfAvailabilityZones,
      'region': ?region,
      'subnetSpecs': ?pulumi.Input.mapOptionalInputValue<List<SubnetSpec>, List<Map<String, dynamic>>>(subnetSpecs, (value) => pulumi.Input.encodeList<SubnetSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetStrategy': ?pulumi.Input.mapOptionalInputValue<SubnetAllocationStrategy, String>(subnetStrategy, (value) => value.value),
      'tags': ?tags,
      'vpcEndpointSpecs': ?pulumi.Input.mapOptionalInputValue<List<VpcEndpointSpec>, List<Map<String, dynamic>>>(vpcEndpointSpecs, (value) => pulumi.Input.encodeList<VpcEndpointSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VpcArgs.fromMap(Map<String, dynamic> map) {
    return VpcArgs(
      assignGeneratedIpv6CidrBlock: map['assignGeneratedIpv6CidrBlock'] == null ? null : (map['assignGeneratedIpv6CidrBlock']! as bool).input(),
      availabilityZoneCidrMask: map['availabilityZoneCidrMask'] == null ? null : (map['availabilityZoneCidrMask']! as int).input(),
      availabilityZoneNames: map['availabilityZoneNames'] == null ? null : ((map['availabilityZoneNames']! as List).cast<String>()).input(),
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock']! as String).input(),
      enableDnsHostnames: map['enableDnsHostnames'] == null ? null : (map['enableDnsHostnames']! as bool).input(),
      enableDnsSupport: map['enableDnsSupport'] == null ? null : (map['enableDnsSupport']! as bool).input(),
      enableNetworkAddressUsageMetrics: map['enableNetworkAddressUsageMetrics'] == null ? null : (map['enableNetworkAddressUsageMetrics']! as bool).input(),
      instanceTenancy: map['instanceTenancy'] == null ? null : (map['instanceTenancy']! as String).input(),
      ipv4IpamPoolId: map['ipv4IpamPoolId'] == null ? null : (map['ipv4IpamPoolId']! as String).input(),
      ipv4NetmaskLength: map['ipv4NetmaskLength'] == null ? null : (map['ipv4NetmaskLength']! as int).input(),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : (map['ipv6CidrBlock']! as String).input(),
      ipv6CidrBlockNetworkBorderGroup: map['ipv6CidrBlockNetworkBorderGroup'] == null ? null : (map['ipv6CidrBlockNetworkBorderGroup']! as String).input(),
      ipv6IpamPoolId: map['ipv6IpamPoolId'] == null ? null : (map['ipv6IpamPoolId']! as String).input(),
      ipv6NetmaskLength: map['ipv6NetmaskLength'] == null ? null : (map['ipv6NetmaskLength']! as int).input(),
      natGateways: map['natGateways'] == null ? null : (NatGatewayConfiguration.fromMap((map['natGateways']! as Map).cast<String, dynamic>())).input(),
      numberOfAvailabilityZones: map['numberOfAvailabilityZones'] == null ? null : (map['numberOfAvailabilityZones']! as int).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      subnetSpecs: map['subnetSpecs'] == null ? null : (pulumi.Input.decodeList<SubnetSpec>(map['subnetSpecs']!, (value) => SubnetSpec.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subnetStrategy: map['subnetStrategy'] == null ? null : (SubnetAllocationStrategy.fromValue(map['subnetStrategy']! as String)).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vpcEndpointSpecs: map['vpcEndpointSpecs'] == null ? null : (pulumi.Input.decodeList<VpcEndpointSpec>(map['vpcEndpointSpecs']!, (value) => VpcEndpointSpec.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

