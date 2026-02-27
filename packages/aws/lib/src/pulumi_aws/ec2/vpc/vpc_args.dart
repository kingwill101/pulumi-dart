// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Vpc.
class VpcArgs {
  /// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block. Default is `false`. Conflicts with `ipv6_ipam_pool_id`
  final pulumi.Input<bool>? assignGeneratedIpv6CidrBlock;

  /// The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using `ipv4_netmask_length`.
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

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  VpcArgs({
    this.assignGeneratedIpv6CidrBlock,
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
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assignGeneratedIpv6CidrBlockValue = assignGeneratedIpv6CidrBlock;
    if (assignGeneratedIpv6CidrBlockValue != null) {
      map['assignGeneratedIpv6CidrBlock'] = assignGeneratedIpv6CidrBlockValue;
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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory VpcArgs.fromMap(Map<String, dynamic> map) {
    return VpcArgs(
      assignGeneratedIpv6CidrBlock: pulumi.Input.asOptionalInput<bool>(
          map['assignGeneratedIpv6CidrBlock']),
      cidrBlock: pulumi.Input.asOptionalInput<String>(map['cidrBlock']),
      enableDnsHostnames:
          pulumi.Input.asOptionalInput<bool>(map['enableDnsHostnames']),
      enableDnsSupport:
          pulumi.Input.asOptionalInput<bool>(map['enableDnsSupport']),
      enableNetworkAddressUsageMetrics: pulumi.Input.asOptionalInput<bool>(
          map['enableNetworkAddressUsageMetrics']),
      instanceTenancy:
          pulumi.Input.asOptionalInput<String>(map['instanceTenancy']),
      ipv4IpamPoolId:
          pulumi.Input.asOptionalInput<String>(map['ipv4IpamPoolId']),
      ipv4NetmaskLength:
          pulumi.Input.asOptionalInput<int>(map['ipv4NetmaskLength']),
      ipv6CidrBlock: pulumi.Input.asOptionalInput<String>(map['ipv6CidrBlock']),
      ipv6CidrBlockNetworkBorderGroup: pulumi.Input.asOptionalInput<String>(
          map['ipv6CidrBlockNetworkBorderGroup']),
      ipv6IpamPoolId:
          pulumi.Input.asOptionalInput<String>(map['ipv6IpamPoolId']),
      ipv6NetmaskLength:
          pulumi.Input.asOptionalInput<int>(map['ipv6NetmaskLength']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
