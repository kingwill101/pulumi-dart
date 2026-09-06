// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_configuration.dart';
import 'subnet_allocation_strategy.dart';
import 'subnet_name_tag_strategy.dart';
import 'subnet_spec.dart';
import 'vpc_endpoint_spec.dart';
import 'vpc_endpoint_strategy.dart';

/// {@template pulumi_ec2_vpc_args_doc}
/// The set of arguments for Vpc.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_args_doc}
class VpcArgs {
  /// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block. Default is `false`. Conflicts with `ipv6IpamPoolId`
  final pulumi.Input<bool?>? assignGeneratedIpv6CidrBlock;
  /// The netmask for each available zone to be aligned to. This is optional, the default value is inferred based on an even distribution of available space from the VPC's CIDR block after being divided evenly by the number of availability zones.
  final pulumi.Input<int?>? availabilityZoneCidrMask;
  /// A list of availability zone names to which the subnets defined in subnetSpecs will be deployed. Optional, defaults to the first 3 AZs in the current region.
  final pulumi.Input<List<String>?>? availabilityZoneNames;
  /// The CIDR block for the VPC. Optional. Defaults to 10.0.0.0/16.
  final pulumi.Input<String?>? cidrBlock;
  /// A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false.
  final pulumi.Input<bool?>? enableDnsHostnames;
  /// A boolean flag to enable/disable DNS support in the VPC. Defaults to true.
  final pulumi.Input<bool?>? enableDnsSupport;
  /// Indicates whether Network Address Usage metrics are enabled for your VPC. Defaults to false.
  final pulumi.Input<bool?>? enableNetworkAddressUsageMetrics;
  /// A tenancy option for instances launched into the VPC. Default is `default`, which ensures that EC2 instances launched in this VPC use the EC2 instance tenancy attribute specified when the EC2 instance is launched. The only other option is `dedicated`, which ensures that EC2 instances launched in this VPC are run on dedicated tenancy instances regardless of the tenancy attribute specified at launch. This has a dedicated per region fee of $2 per hour, plus an hourly per instance usage fee.
  final pulumi.Input<String?>? instanceTenancy;
  /// The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Using IPAM you can monitor IP address usage throughout your AWS Organization.
  final pulumi.Input<String?>? ipv4IpamPoolId;
  /// The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a `ipv4IpamPoolId`.
  final pulumi.Input<int?>? ipv4NetmaskLength;
  /// IPv6 CIDR block to request from an IPAM Pool. Can be set explicitly or derived from IPAM using `ipv6NetmaskLength`.
  final pulumi.Input<String?>? ipv6CidrBlock;
  /// By default when an IPv6 CIDR is assigned to a VPC a default ipv6CidrBlockNetworkBorderGroup will be set to the region of the VPC. This can be changed to restrict advertisement of public addresses to specific Network Border Groups such as LocalZones.
  final pulumi.Input<String?>? ipv6CidrBlockNetworkBorderGroup;
  /// IPAM Pool ID for a IPv6 pool. Conflicts with `assignGeneratedIpv6CidrBlock`.
  final pulumi.Input<String?>? ipv6IpamPoolId;
  /// Netmask length to request from IPAM Pool. Conflicts with `ipv6CidrBlock`. This can be omitted if IPAM pool as a `allocationDefaultNetmaskLength` set. Valid values are from `44` to `60` in increments of 4.
  final pulumi.Input<int?>? ipv6NetmaskLength;
  /// Configuration for NAT Gateways. Optional. If private and public subnets are both specified, defaults to one gateway per availability zone. Otherwise, no gateways will be created.
  final pulumi.Input<NatGatewayConfiguration?>? natGateways;
  /// A number of availability zones to which the subnets defined in subnetSpecs will be deployed. Optional, defaults to the first 3 AZs in the current region.
  final pulumi.Input<int?>? numberOfAvailabilityZones;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Controls the AWS `Name` tags applied to generated subnets and their associated route tables. Pulumi logical resource names and URNs are unchanged. Optional; defaults to `Legacy`.
  final pulumi.Input<SubnetNameTagStrategy?>? subnetNameTagStrategy;
  /// A list of subnet specs that should be deployed to each AZ specified in availabilityZoneNames. Optional. Defaults to a (smaller) public subnet and a (larger) private subnet based on the size of the CIDR block for the VPC. Private subnets are allocated CIDR block ranges first, followed by Public subnets, and Isolated subnets are allocated last.
  final pulumi.Input<List<SubnetSpec>?>? subnetSpecs;
  /// The strategy to use when allocating subnets for the VPC. Optional. Defaults to `Legacy`.
  final pulumi.Input<SubnetAllocationStrategy?>? subnetStrategy;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A list of VPC Endpoints specs to be deployed as part of the VPC
  final pulumi.Input<List<VpcEndpointSpec>?>? vpcEndpointSpecs;
  /// The strategy to use when applying VPC endpoint specs. Optional. Defaults to `Legacy`.
  final pulumi.Input<VpcEndpointStrategy?>? vpcEndpointStrategy;

  /// Creates a new [VpcArgs].
  /// [assignGeneratedIpv6CidrBlock] Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block. Default is `false`. Conflicts with `ipv6IpamPoolId`
  /// [availabilityZoneCidrMask] The netmask for each available zone to be aligned to. This is optional, the default value is inferred based on an even distribution of available space from the VPC's CIDR block after being divided evenly by the number of availability zones.
  /// [availabilityZoneNames] A list of availability zone names to which the subnets defined in subnetSpecs will be deployed. Optional, defaults to the first 3 AZs in the current region.
  /// [cidrBlock] The CIDR block for the VPC. Optional. Defaults to 10.0.0.0/16.
  /// [enableDnsHostnames] A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false.
  /// [enableDnsSupport] A boolean flag to enable/disable DNS support in the VPC. Defaults to true.
  /// [enableNetworkAddressUsageMetrics] Indicates whether Network Address Usage metrics are enabled for your VPC. Defaults to false.
  /// [instanceTenancy] A tenancy option for instances launched into the VPC. Default is `default`, which ensures that EC2 instances launched in this VPC use the EC2 instance tenancy attribute specified when the EC2 instance is launched. The only other option is `dedicated`, which ensures that EC2 instances launched in this VPC are run on dedicated tenancy instances regardless of the tenancy attribute specified at launch. This has a dedicated per region fee of $2 per hour, plus an hourly per instance usage fee.
  /// [ipv4IpamPoolId] The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Using IPAM you can monitor IP address usage throughout your AWS Organization.
  /// [ipv4NetmaskLength] The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a `ipv4IpamPoolId`.
  /// [ipv6CidrBlock] IPv6 CIDR block to request from an IPAM Pool. Can be set explicitly or derived from IPAM using `ipv6NetmaskLength`.
  /// [ipv6CidrBlockNetworkBorderGroup] By default when an IPv6 CIDR is assigned to a VPC a default ipv6CidrBlockNetworkBorderGroup will be set to the region of the VPC. This can be changed to restrict advertisement of public addresses to specific Network Border Groups such as LocalZones.
  /// [ipv6IpamPoolId] IPAM Pool ID for a IPv6 pool. Conflicts with `assignGeneratedIpv6CidrBlock`.
  /// [ipv6NetmaskLength] Netmask length to request from IPAM Pool. Conflicts with `ipv6CidrBlock`. This can be omitted if IPAM pool as a `allocationDefaultNetmaskLength` set. Valid values are from `44` to `60` in increments of 4.
  /// [natGateways] Configuration for NAT Gateways. Optional. If private and public subnets are both specified, defaults to one gateway per availability zone. Otherwise, no gateways will be created.
  /// [numberOfAvailabilityZones] A number of availability zones to which the subnets defined in subnetSpecs will be deployed. Optional, defaults to the first 3 AZs in the current region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetNameTagStrategy] Controls the AWS `Name` tags applied to generated subnets and their associated route tables. Pulumi logical resource names and URNs are unchanged. Optional; defaults to `Legacy`.
  /// [subnetSpecs] A list of subnet specs that should be deployed to each AZ specified in availabilityZoneNames. Optional. Defaults to a (smaller) public subnet and a (larger) private subnet based on the size of the CIDR block for the VPC. Private subnets are allocated CIDR block ranges first, followed by Public subnets, and Isolated subnets are allocated last.
  /// [subnetStrategy] The strategy to use when allocating subnets for the VPC. Optional. Defaults to `Legacy`.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcEndpointSpecs] A list of VPC Endpoints specs to be deployed as part of the VPC
  /// [vpcEndpointStrategy] The strategy to use when applying VPC endpoint specs. Optional. Defaults to `Legacy`.
  const VpcArgs({
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
    this.subnetNameTagStrategy,
    this.subnetSpecs,
    this.subnetStrategy,
    this.tags,
    this.vpcEndpointSpecs,
    this.vpcEndpointStrategy,
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
      'subnetNameTagStrategy': ?pulumi.Input.mapOptionalInputValue<SubnetNameTagStrategy, String>(subnetNameTagStrategy, (value) => value.wireValue),
      'subnetSpecs': ?pulumi.Input.mapOptionalInputValue<List<SubnetSpec>, List<Map<String, dynamic>>>(subnetSpecs, (value) => pulumi.Input.encodeList<SubnetSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetStrategy': ?pulumi.Input.mapOptionalInputValue<SubnetAllocationStrategy, String>(subnetStrategy, (value) => value.wireValue),
      'tags': ?tags,
      'vpcEndpointSpecs': ?pulumi.Input.mapOptionalInputValue<List<VpcEndpointSpec>, List<Map<String, dynamic>>>(vpcEndpointSpecs, (value) => pulumi.Input.encodeList<VpcEndpointSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcEndpointStrategy': ?pulumi.Input.mapOptionalInputValue<VpcEndpointStrategy, String>(vpcEndpointStrategy, (value) => value.wireValue),
    };
  }

  factory VpcArgs.fromMap(Map<String, dynamic> map) {
    return VpcArgs(
      assignGeneratedIpv6CidrBlock: (() { final guardedValue = map['assignGeneratedIpv6CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityZoneCidrMask: (() { final guardedValue = map['availabilityZoneCidrMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      availabilityZoneNames: (() { final guardedValue = map['availabilityZoneNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDnsHostnames: (() { final guardedValue = map['enableDnsHostnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDnsSupport: (() { final guardedValue = map['enableDnsSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNetworkAddressUsageMetrics: (() { final guardedValue = map['enableNetworkAddressUsageMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceTenancy: (() { final guardedValue = map['instanceTenancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4IpamPoolId: (() { final guardedValue = map['ipv4IpamPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4NetmaskLength: (() { final guardedValue = map['ipv4NetmaskLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      ipv6CidrBlock: (() { final guardedValue = map['ipv6CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6CidrBlockNetworkBorderGroup: (() { final guardedValue = map['ipv6CidrBlockNetworkBorderGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6IpamPoolId: (() { final guardedValue = map['ipv6IpamPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6NetmaskLength: (() { final guardedValue = map['ipv6NetmaskLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      natGateways: (() { final guardedValue = map['natGateways']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NatGatewayConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      numberOfAvailabilityZones: (() { final guardedValue = map['numberOfAvailabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetNameTagStrategy: (() { final guardedValue = map['subnetNameTagStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetNameTagStrategy.fromValue(guardedValue as String)); })(),
      subnetSpecs: (() { final guardedValue = map['subnetSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubnetSpec>(guardedValue, (value) => SubnetSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subnetStrategy: (() { final guardedValue = map['subnetStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetAllocationStrategy.fromValue(guardedValue as String)); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcEndpointSpecs: (() { final guardedValue = map['vpcEndpointSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpcEndpointSpec>(guardedValue, (value) => VpcEndpointSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcEndpointStrategy: (() { final guardedValue = map['vpcEndpointStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcEndpointStrategy.fromValue(guardedValue as String)); })(),
    );
  }
}
