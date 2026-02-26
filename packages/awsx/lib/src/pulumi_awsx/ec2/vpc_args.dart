// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'nat_gateway_configuration.dart';
import 'subnet_allocation_strategy.dart';
import 'subnet_spec.dart';
import 'vpc_endpoint_spec.dart';

/// The set of arguments for Vpc.
class VpcArgs {
  /// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Conflicts with <span pulumi-lang-nodejs="`ipv6IpamPoolId`" pulumi-lang-dotnet="`Ipv6IpamPoolId`" pulumi-lang-go="`ipv6IpamPoolId`" pulumi-lang-python="`ipv6_ipam_pool_id`" pulumi-lang-yaml="`ipv6IpamPoolId`" pulumi-lang-java="`ipv6IpamPoolId`">`ipv6_ipam_pool_id`</span>
  final Input<bool>? assignGeneratedIpv6CidrBlock;

  /// The netmask for each available zone to be aligned to. This is optional, the default value is inferred based on an even distribution of available space from the VPC's CIDR block after being divided evenly by the number of availability zones.
  final Input<int>? availabilityZoneCidrMask;

  /// A list of availability zone names to which the subnets defined in subnetSpecs will be deployed. Optional, defaults to the first 3 AZs in the current region.
  final Input<List<String>>? availabilityZoneNames;

  /// The CIDR block for the VPC. Optional. Defaults to 10.0.0.0/16.
  final Input<String>? cidrBlock;

  /// A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false.
  final Input<bool>? enableDnsHostnames;

  /// A boolean flag to enable/disable DNS support in the VPC. Defaults to true.
  final Input<bool>? enableDnsSupport;

  /// Indicates whether Network Address Usage metrics are enabled for your VPC. Defaults to false.
  final Input<bool>? enableNetworkAddressUsageMetrics;

  /// A tenancy option for instances launched into the VPC. Default is <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>, which ensures that EC2 instances launched in this VPC use the EC2 instance tenancy attribute specified when the EC2 instance is launched. The only other option is <span pulumi-lang-nodejs="`dedicated`" pulumi-lang-dotnet="`Dedicated`" pulumi-lang-go="`dedicated`" pulumi-lang-python="`dedicated`" pulumi-lang-yaml="`dedicated`" pulumi-lang-java="`dedicated`">`dedicated`</span>, which ensures that EC2 instances launched in this VPC are run on dedicated tenancy instances regardless of the tenancy attribute specified at launch. This has a dedicated per region fee of $2 per hour, plus an hourly per instance usage fee.
  final Input<String>? instanceTenancy;

  /// The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Using IPAM you can monitor IP address usage throughout your AWS Organization.
  final Input<String>? ipv4IpamPoolId;

  /// The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a <span pulumi-lang-nodejs="`ipv4IpamPoolId`" pulumi-lang-dotnet="`Ipv4IpamPoolId`" pulumi-lang-go="`ipv4IpamPoolId`" pulumi-lang-python="`ipv4_ipam_pool_id`" pulumi-lang-yaml="`ipv4IpamPoolId`" pulumi-lang-java="`ipv4IpamPoolId`">`ipv4_ipam_pool_id`</span>.
  final Input<int>? ipv4NetmaskLength;

  /// IPv6 CIDR block to request from an IPAM Pool. Can be set explicitly or derived from IPAM using <span pulumi-lang-nodejs="`ipv6NetmaskLength`" pulumi-lang-dotnet="`Ipv6NetmaskLength`" pulumi-lang-go="`ipv6NetmaskLength`" pulumi-lang-python="`ipv6_netmask_length`" pulumi-lang-yaml="`ipv6NetmaskLength`" pulumi-lang-java="`ipv6NetmaskLength`">`ipv6_netmask_length`</span>.
  final Input<String>? ipv6CidrBlock;

  /// By default when an IPv6 CIDR is assigned to a VPC a default<span pulumi-lang-nodejs=" ipv6CidrBlockNetworkBorderGroup " pulumi-lang-dotnet=" Ipv6CidrBlockNetworkBorderGroup " pulumi-lang-go=" ipv6CidrBlockNetworkBorderGroup " pulumi-lang-python=" ipv6_cidr_block_network_border_group " pulumi-lang-yaml=" ipv6CidrBlockNetworkBorderGroup " pulumi-lang-java=" ipv6CidrBlockNetworkBorderGroup "> ipv6_cidr_block_network_border_group </span>will be set to the region of the VPC. This can be changed to restrict advertisement of public addresses to specific Network Border Groups such as LocalZones.
  final Input<String>? ipv6CidrBlockNetworkBorderGroup;

  /// IPAM Pool ID for a IPv6 pool. Conflicts with <span pulumi-lang-nodejs="`assignGeneratedIpv6CidrBlock`" pulumi-lang-dotnet="`AssignGeneratedIpv6CidrBlock`" pulumi-lang-go="`assignGeneratedIpv6CidrBlock`" pulumi-lang-python="`assign_generated_ipv6_cidr_block`" pulumi-lang-yaml="`assignGeneratedIpv6CidrBlock`" pulumi-lang-java="`assignGeneratedIpv6CidrBlock`">`assign_generated_ipv6_cidr_block`</span>.
  final Input<String>? ipv6IpamPoolId;

  /// Netmask length to request from IPAM Pool. Conflicts with <span pulumi-lang-nodejs="`ipv6CidrBlock`" pulumi-lang-dotnet="`Ipv6CidrBlock`" pulumi-lang-go="`ipv6CidrBlock`" pulumi-lang-python="`ipv6_cidr_block`" pulumi-lang-yaml="`ipv6CidrBlock`" pulumi-lang-java="`ipv6CidrBlock`">`ipv6_cidr_block`</span>. This can be omitted if IPAM pool as a <span pulumi-lang-nodejs="`allocationDefaultNetmaskLength`" pulumi-lang-dotnet="`AllocationDefaultNetmaskLength`" pulumi-lang-go="`allocationDefaultNetmaskLength`" pulumi-lang-python="`allocation_default_netmask_length`" pulumi-lang-yaml="`allocationDefaultNetmaskLength`" pulumi-lang-java="`allocationDefaultNetmaskLength`">`allocation_default_netmask_length`</span> set. Valid values are from <span pulumi-lang-nodejs="`44`" pulumi-lang-dotnet="`44`" pulumi-lang-go="`44`" pulumi-lang-python="`44`" pulumi-lang-yaml="`44`" pulumi-lang-java="`44`">`44`</span> to <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span> in increments of 4.
  final Input<int>? ipv6NetmaskLength;

  /// Configuration for NAT Gateways. Optional. If private and public subnets are both specified, defaults to one gateway per availability zone. Otherwise, no gateways will be created.
  final Input<NatGatewayConfiguration>? natGateways;

  /// A number of availability zones to which the subnets defined in subnetSpecs will be deployed. Optional, defaults to the first 3 AZs in the current region.
  final Input<int>? numberOfAvailabilityZones;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A list of subnet specs that should be deployed to each AZ specified in availabilityZoneNames. Optional. Defaults to a (smaller) public subnet and a (larger) private subnet based on the size of the CIDR block for the VPC. Private subnets are allocated CIDR block ranges first, followed by Public subnets, and Isolated subnets are allocated last.
  final Input<List<SubnetSpec>>? subnetSpecs;

  /// The strategy to use when allocating subnets for the VPC. Optional. Defaults to `Legacy`.
  final Input<SubnetAllocationStrategy>? subnetStrategy;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// A list of VPC Endpoints specs to be deployed as part of the VPC
  final Input<List<VpcEndpointSpec>>? vpcEndpointSpecs;

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
    final map = <String, dynamic>{};
    final assignGeneratedIpv6CidrBlockValue = assignGeneratedIpv6CidrBlock;
    if (assignGeneratedIpv6CidrBlockValue != null) {
      map['assignGeneratedIpv6CidrBlock'] = assignGeneratedIpv6CidrBlockValue;
    }
    final availabilityZoneCidrMaskValue = availabilityZoneCidrMask;
    if (availabilityZoneCidrMaskValue != null) {
      map['availabilityZoneCidrMask'] = availabilityZoneCidrMaskValue;
    }
    final availabilityZoneNamesValue = availabilityZoneNames;
    if (availabilityZoneNamesValue != null) {
      map['availabilityZoneNames'] = availabilityZoneNamesValue;
    }
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    final enableDnsHostnamesValue = enableDnsHostnames;
    if (enableDnsHostnamesValue != null) {
      map['enableDnsHostnames'] = enableDnsHostnamesValue;
    }
    final enableDnsSupportValue = enableDnsSupport;
    if (enableDnsSupportValue != null) {
      map['enableDnsSupport'] = enableDnsSupportValue;
    }
    final enableNetworkAddressUsageMetricsValue =
        enableNetworkAddressUsageMetrics;
    if (enableNetworkAddressUsageMetricsValue != null) {
      map['enableNetworkAddressUsageMetrics'] =
          enableNetworkAddressUsageMetricsValue;
    }
    final instanceTenancyValue = instanceTenancy;
    if (instanceTenancyValue != null) {
      map['instanceTenancy'] = instanceTenancyValue;
    }
    final ipv4IpamPoolIdValue = ipv4IpamPoolId;
    if (ipv4IpamPoolIdValue != null) {
      map['ipv4IpamPoolId'] = ipv4IpamPoolIdValue;
    }
    final ipv4NetmaskLengthValue = ipv4NetmaskLength;
    if (ipv4NetmaskLengthValue != null) {
      map['ipv4NetmaskLength'] = ipv4NetmaskLengthValue;
    }
    final ipv6CidrBlockValue = ipv6CidrBlock;
    if (ipv6CidrBlockValue != null) {
      map['ipv6CidrBlock'] = ipv6CidrBlockValue;
    }
    final ipv6CidrBlockNetworkBorderGroupValue =
        ipv6CidrBlockNetworkBorderGroup;
    if (ipv6CidrBlockNetworkBorderGroupValue != null) {
      map['ipv6CidrBlockNetworkBorderGroup'] =
          ipv6CidrBlockNetworkBorderGroupValue;
    }
    final ipv6IpamPoolIdValue = ipv6IpamPoolId;
    if (ipv6IpamPoolIdValue != null) {
      map['ipv6IpamPoolId'] = ipv6IpamPoolIdValue;
    }
    final ipv6NetmaskLengthValue = ipv6NetmaskLength;
    if (ipv6NetmaskLengthValue != null) {
      map['ipv6NetmaskLength'] = ipv6NetmaskLengthValue;
    }
    final natGatewaysValue = natGateways;
    if (natGatewaysValue != null) {
      map['natGateways'] = Input.mapOptionalInputValue<NatGatewayConfiguration,
          Map<String, dynamic>>(natGatewaysValue, (value) => value.toMap());
    }
    final numberOfAvailabilityZonesValue = numberOfAvailabilityZones;
    if (numberOfAvailabilityZonesValue != null) {
      map['numberOfAvailabilityZones'] = numberOfAvailabilityZonesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final subnetSpecsValue = subnetSpecs;
    if (subnetSpecsValue != null) {
      map['subnetSpecs'] = Input.mapOptionalInputValue<List<SubnetSpec>,
              List<Map<String, dynamic>>>(
          subnetSpecsValue,
          (value) => Input.encodeList<SubnetSpec, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final subnetStrategyValue = subnetStrategy;
    if (subnetStrategyValue != null) {
      map['subnetStrategy'] =
          Input.mapOptionalInputValue<SubnetAllocationStrategy, String>(
              subnetStrategyValue, (value) => value.value);
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcEndpointSpecsValue = vpcEndpointSpecs;
    if (vpcEndpointSpecsValue != null) {
      map['vpcEndpointSpecs'] = Input.mapOptionalInputValue<
              List<VpcEndpointSpec>, List<Map<String, dynamic>>>(
          vpcEndpointSpecsValue,
          (value) => Input.encodeList<VpcEndpointSpec, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory VpcArgs.fromMap(Map<String, dynamic> map) {
    return VpcArgs(
      assignGeneratedIpv6CidrBlock:
          Input.asOptionalInput<bool>(map['assignGeneratedIpv6CidrBlock']),
      availabilityZoneCidrMask:
          Input.asOptionalInput<int>(map['availabilityZoneCidrMask']),
      availabilityZoneNames:
          Input.asOptionalInput<List<String>>(map['availabilityZoneNames']),
      cidrBlock: Input.asOptionalInput<String>(map['cidrBlock']),
      enableDnsHostnames:
          Input.asOptionalInput<bool>(map['enableDnsHostnames']),
      enableDnsSupport: Input.asOptionalInput<bool>(map['enableDnsSupport']),
      enableNetworkAddressUsageMetrics:
          Input.asOptionalInput<bool>(map['enableNetworkAddressUsageMetrics']),
      instanceTenancy: Input.asOptionalInput<String>(map['instanceTenancy']),
      ipv4IpamPoolId: Input.asOptionalInput<String>(map['ipv4IpamPoolId']),
      ipv4NetmaskLength: Input.asOptionalInput<int>(map['ipv4NetmaskLength']),
      ipv6CidrBlock: Input.asOptionalInput<String>(map['ipv6CidrBlock']),
      ipv6CidrBlockNetworkBorderGroup:
          Input.asOptionalInput<String>(map['ipv6CidrBlockNetworkBorderGroup']),
      ipv6IpamPoolId: Input.asOptionalInput<String>(map['ipv6IpamPoolId']),
      ipv6NetmaskLength: Input.asOptionalInput<int>(map['ipv6NetmaskLength']),
      natGateways:
          Input.asOptionalInput<NatGatewayConfiguration>(map['natGateways']),
      numberOfAvailabilityZones:
          Input.asOptionalInput<int>(map['numberOfAvailabilityZones']),
      region: Input.asOptionalInput<String>(map['region']),
      subnetSpecs: Input.asOptionalInput<List<SubnetSpec>>(map['subnetSpecs']),
      subnetStrategy: Input.asOptionalInput<SubnetAllocationStrategy>(
          map['subnetStrategy']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcEndpointSpecs:
          Input.asOptionalInput<List<VpcEndpointSpec>>(map['vpcEndpointSpecs']),
    );
  }
}
