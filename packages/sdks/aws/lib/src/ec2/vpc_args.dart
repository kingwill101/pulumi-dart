// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_vpc_args_doc}
/// The set of arguments for Vpc.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_vpc_args_doc}
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

  /// Creates a new [VpcArgs].
  /// [assignGeneratedIpv6CidrBlock] Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block. Default is `false`. Conflicts with `ipv6_ipam_pool_id`
  /// [cidrBlock] The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using `ipv4_netmask_length`.
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
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  VpcArgs({
    pulumi.Output<bool>? assignGeneratedIpv6CidrBlock,
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<bool>? enableDnsHostnames,
    pulumi.Output<bool>? enableDnsSupport,
    pulumi.Output<bool>? enableNetworkAddressUsageMetrics,
    pulumi.Output<String>? instanceTenancy,
    pulumi.Output<String>? ipv4IpamPoolId,
    pulumi.Output<int>? ipv4NetmaskLength,
    pulumi.Output<String>? ipv6CidrBlock,
    pulumi.Output<String>? ipv6CidrBlockNetworkBorderGroup,
    pulumi.Output<String>? ipv6IpamPoolId,
    pulumi.Output<int>? ipv6NetmaskLength,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      assignGeneratedIpv6CidrBlock = pulumi.Input.asOptionalInput<bool>(assignGeneratedIpv6CidrBlock),
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      enableDnsHostnames = pulumi.Input.asOptionalInput<bool>(enableDnsHostnames),
      enableDnsSupport = pulumi.Input.asOptionalInput<bool>(enableDnsSupport),
      enableNetworkAddressUsageMetrics = pulumi.Input.asOptionalInput<bool>(enableNetworkAddressUsageMetrics),
      instanceTenancy = pulumi.Input.asOptionalInput<String>(instanceTenancy),
      ipv4IpamPoolId = pulumi.Input.asOptionalInput<String>(ipv4IpamPoolId),
      ipv4NetmaskLength = pulumi.Input.asOptionalInput<int>(ipv4NetmaskLength),
      ipv6CidrBlock = pulumi.Input.asOptionalInput<String>(ipv6CidrBlock),
      ipv6CidrBlockNetworkBorderGroup = pulumi.Input.asOptionalInput<String>(ipv6CidrBlockNetworkBorderGroup),
      ipv6IpamPoolId = pulumi.Input.asOptionalInput<String>(ipv6IpamPoolId),
      ipv6NetmaskLength = pulumi.Input.asOptionalInput<int>(ipv6NetmaskLength),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignGeneratedIpv6CidrBlock': ?assignGeneratedIpv6CidrBlock,
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
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory VpcArgs.fromMap(Map<String, dynamic> map) {
    return VpcArgs(
      assignGeneratedIpv6CidrBlock: map['assignGeneratedIpv6CidrBlock'] == null ? null : pulumi.Output.create<bool>(map['assignGeneratedIpv6CidrBlock'] as bool),
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      enableDnsHostnames: map['enableDnsHostnames'] == null ? null : pulumi.Output.create<bool>(map['enableDnsHostnames'] as bool),
      enableDnsSupport: map['enableDnsSupport'] == null ? null : pulumi.Output.create<bool>(map['enableDnsSupport'] as bool),
      enableNetworkAddressUsageMetrics: map['enableNetworkAddressUsageMetrics'] == null ? null : pulumi.Output.create<bool>(map['enableNetworkAddressUsageMetrics'] as bool),
      instanceTenancy: map['instanceTenancy'] == null ? null : pulumi.Output.create<String>(map['instanceTenancy'] as String),
      ipv4IpamPoolId: map['ipv4IpamPoolId'] == null ? null : pulumi.Output.create<String>(map['ipv4IpamPoolId'] as String),
      ipv4NetmaskLength: map['ipv4NetmaskLength'] == null ? null : pulumi.Output.create<int>(map['ipv4NetmaskLength'] as int),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : pulumi.Output.create<String>(map['ipv6CidrBlock'] as String),
      ipv6CidrBlockNetworkBorderGroup: map['ipv6CidrBlockNetworkBorderGroup'] == null ? null : pulumi.Output.create<String>(map['ipv6CidrBlockNetworkBorderGroup'] as String),
      ipv6IpamPoolId: map['ipv6IpamPoolId'] == null ? null : pulumi.Output.create<String>(map['ipv6IpamPoolId'] as String),
      ipv6NetmaskLength: map['ipv6NetmaskLength'] == null ? null : pulumi.Output.create<int>(map['ipv6NetmaskLength'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

