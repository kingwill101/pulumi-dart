import 'package:pulumi/pulumi.dart';
import 'vpc_args.dart';

/// Provides a VPC resource.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// Basic usage with tags:
///
///
///
/// VPC with CIDR from AWS IPAM:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPCs using the VPC `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpc:Vpc test_vpc vpc-a01106c2
/// ```
class Vpc extends CustomResource {
  /// Amazon Resource Name (ARN) of VPC
  late final Output<String> arn;

  /// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block. Default is `false`. Conflicts with `ipv6_ipam_pool_id`
  late final Output<bool?> assignGeneratedIpv6CidrBlock;

  /// The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using `ipv4_netmask_length`.
  late final Output<String> cidrBlock;

  /// The ID of the network ACL created by default on VPC creation
  late final Output<String> defaultNetworkAclId;

  /// The ID of the route table created by default on VPC creation
  late final Output<String> defaultRouteTableId;

  /// The ID of the security group created by default on VPC creation
  late final Output<String> defaultSecurityGroupId;

  /// DHCP options id of the desired VPC.
  late final Output<String> dhcpOptionsId;

  /// A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false.
  late final Output<bool> enableDnsHostnames;

  /// A boolean flag to enable/disable DNS support in the VPC. Defaults to true.
  late final Output<bool?> enableDnsSupport;

  /// Indicates whether Network Address Usage metrics are enabled for your VPC. Defaults to false.
  late final Output<bool> enableNetworkAddressUsageMetrics;

  /// A tenancy option for instances launched into the VPC. Default is `default`, which ensures that EC2 instances launched in this VPC use the EC2 instance tenancy attribute specified when the EC2 instance is launched. The only other option is `dedicated`, which ensures that EC2 instances launched in this VPC are run on dedicated tenancy instances regardless of the tenancy attribute specified at launch. This has a dedicated per region fee of $2 per hour, plus an hourly per instance usage fee.
  late final Output<String?> instanceTenancy;

  /// The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Using IPAM you can monitor IP address usage throughout your AWS Organization.
  late final Output<String?> ipv4IpamPoolId;

  /// The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a `ipv4_ipam_pool_id`.
  late final Output<int?> ipv4NetmaskLength;

  /// The association ID for the IPv6 CIDR block.
  late final Output<String> ipv6AssociationId;

  /// IPv6 CIDR block to request from an IPAM Pool. Can be set explicitly or derived from IPAM using `ipv6_netmask_length`.
  late final Output<String> ipv6CidrBlock;

  /// By default when an IPv6 CIDR is assigned to a VPC a default ipv6_cidr_block_network_border_group will be set to the region of the VPC. This can be changed to restrict advertisement of public addresses to specific Network Border Groups such as LocalZones.
  late final Output<String> ipv6CidrBlockNetworkBorderGroup;

  /// IPAM Pool ID for a IPv6 pool. Conflicts with `assign_generated_ipv6_cidr_block`.
  late final Output<String?> ipv6IpamPoolId;

  /// Netmask length to request from IPAM Pool. Conflicts with `ipv6_cidr_block`. This can be omitted if IPAM pool as a `allocation_default_netmask_length` set. Valid values are from `44` to `60` in increments of 4.
  late final Output<int?> ipv6NetmaskLength;

  /// The ID of the main route table associated with
  /// this VPC. Note that you can change a VPC's main route table by using an
  /// `aws.ec2.MainRouteTableAssociation`.
  late final Output<String> mainRouteTableId;

  /// The ID of the AWS account that owns the VPC.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Vpc(
    String name, {
    VpcArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpc:Vpc',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assignGeneratedIpv6CidrBlock =
        registerOutput<bool?>('assignGeneratedIpv6CidrBlock');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.defaultNetworkAclId = registerOutput<String>('defaultNetworkAclId');
    this.defaultRouteTableId = registerOutput<String>('defaultRouteTableId');
    this.defaultSecurityGroupId =
        registerOutput<String>('defaultSecurityGroupId');
    this.dhcpOptionsId = registerOutput<String>('dhcpOptionsId');
    this.enableDnsHostnames = registerOutput<bool>('enableDnsHostnames');
    this.enableDnsSupport = registerOutput<bool?>('enableDnsSupport');
    this.enableNetworkAddressUsageMetrics =
        registerOutput<bool>('enableNetworkAddressUsageMetrics');
    this.instanceTenancy = registerOutput<String?>('instanceTenancy');
    this.ipv4IpamPoolId = registerOutput<String?>('ipv4IpamPoolId');
    this.ipv4NetmaskLength = registerOutput<int?>('ipv4NetmaskLength');
    this.ipv6AssociationId = registerOutput<String>('ipv6AssociationId');
    this.ipv6CidrBlock = registerOutput<String>('ipv6CidrBlock');
    this.ipv6CidrBlockNetworkBorderGroup =
        registerOutput<String>('ipv6CidrBlockNetworkBorderGroup');
    this.ipv6IpamPoolId = registerOutput<String?>('ipv6IpamPoolId');
    this.ipv6NetmaskLength = registerOutput<int?>('ipv6NetmaskLength');
    this.mainRouteTableId = registerOutput<String>('mainRouteTableId');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
