// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_network_network_args_doc}
/// The set of arguments for Network.
/// {@endtemplate}
/// {@macro pulumi_vpc_network_network_args_doc}
class NetworkArgs {
  /// The CIDR block of the VPC.
  ///
  /// - You can specify one of the following CIDR blocks or their subsets as the primary IPv4 CIDR block of the VPC: 192.168.0.0/16, 172.16.0.0/12, and 10.0.0.0/8. These CIDR blocks are standard private CIDR blocks as defined by Request for Comments (RFC) documents. The subnet mask must be 8 to 28 bits in length.
  /// - You can also use a custom CIDR block other than 100.64.0.0/10, 224.0.0.0/4, 127.0.0.0/8, 169.254.0.0/16, and their subnets as the primary IPv4 CIDR block of the VPC.
  final pulumi.Input<String>? cidrBlock;
  /// The status of ClassicLink function.
  final pulumi.Input<bool>? classicLinkEnabled;
  /// The new description of the VPC.
  /// The description must be 1 to 256 characters in length, and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The status of VPC DNS Hostname
  final pulumi.Input<String>? dnsHostnameStatus;
  /// Whether to PreCheck only this request. Value:
  final pulumi.Input<bool>? dryRun;
  /// Whether to enable the IPv6 network segment. Value:
  final pulumi.Input<bool>? enableIpv6;
  /// Force delete vpc or not.
  final pulumi.Input<bool>? forceDelete;
  /// Allocate VPC from The IPAM address pool by entering a mask.
  ///
  /// > **NOTE:**  when you specify the IPAM address pool to create a VPC, enter at least one of the CidrBlock or Ipv4CidrMask parameters.
  final pulumi.Input<int>? ipv4CidrMask;
  /// The ID of the IP Address Manager (IPAM) pool that contains IPv4 addresses.
  final pulumi.Input<String>? ipv4IpamPoolId;
  /// The IPv6 CIDR block of the default VPC.
  ///
  /// > **NOTE:**  When `EnableIpv6` is set to `true`, this parameter is required.
  final pulumi.Input<String>? ipv6CidrBlock;
  /// The IPv6 address segment type of the VPC. Value:
  /// - `BGP` (default): Alibaba Cloud BGP IPv6.
  /// - `ChinaMobile`: China Mobile (single line).
  /// - `ChinaUnicom`: China Unicom (single line).
  /// - `ChinaTelecom`: China Telecom (single line).
  ///
  /// > **NOTE:**  If a single-line bandwidth whitelist is enabled, this field can be set to `ChinaTelecom` (China Telecom), `ChinaUnicom` (China Unicom), or `ChinaMobile` (China Mobile).
  final pulumi.Input<String>? ipv6Isp;
  /// Specifies whether to create the default VPC in the specified region. Valid values:
  final pulumi.Input<bool>? isDefault;
  /// . Field 'name' has been deprecated from provider version 1.119.0. New field 'vpc_name' instead.
  final pulumi.Input<String>? name;
  /// The ID of the resource group to which you want to move the resource.
  ///
  /// > **NOTE:**   You can use resource groups to facilitate resource grouping and permission management for an Alibaba Cloud. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  final pulumi.Input<String>? resourceGroupId;
  /// Field 'secondary_cidr_blocks' has been deprecated from provider version 1.185.0 and it will be removed in the future version. Please use the new resource 'alicloud_vpc_ipv4_cidr_block'. `secondary_cidr_blocks` attributes and `alicloud.vpc.Ipv4CidrBlock` resource cannot be used at the same time.
  final pulumi.Input<List<String>>? secondaryCidrBlocks;
  /// Field 'secondary_cidr_mask' has been deprecated from provider version 1.248.0. New resource 'alicloud_vpc_ipv4_cidr_block' instead.
  final pulumi.Input<int>? secondaryCidrMask;
  /// The description of the route table.
  /// The description must be 1 to 256 characters in length, and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? systemRouteTableDescription;
  /// The name of the route table.
  /// The name must be 1 to 128 characters in length and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? systemRouteTableName;
  /// Whether the system route table receives propagation routes.
  final pulumi.Input<bool>? systemRouteTableRoutePropagationEnable;
  /// The tags of Vpc.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of user CIDRs.
  final pulumi.Input<List<String>>? userCidrs;
  /// The new name of the VPC.
  /// The name must be 1 to 128 characters in length and cannot start with `http://` or `https://`.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? vpcName;

  /// Creates a new [NetworkArgs].
  /// [cidrBlock] The CIDR block of the VPC.
  /// [classicLinkEnabled] The status of ClassicLink function.
  /// [description] The new description of the VPC.
  /// [dnsHostnameStatus] The status of VPC DNS Hostname
  /// [dryRun] Whether to PreCheck only this request. Value:
  /// [enableIpv6] Whether to enable the IPv6 network segment. Value:
  /// [forceDelete] Force delete vpc or not.
  /// [ipv4CidrMask] Allocate VPC from The IPAM address pool by entering a mask.
  /// [ipv4IpamPoolId] The ID of the IP Address Manager (IPAM) pool that contains IPv4 addresses.
  /// [ipv6CidrBlock] The IPv6 CIDR block of the default VPC.
  /// [ipv6Isp] The IPv6 address segment type of the VPC. Value:
  /// [isDefault] Specifies whether to create the default VPC in the specified region. Valid values:
  /// [name] . Field 'name' has been deprecated from provider version 1.119.0. New field 'vpc_name' instead.
  /// [resourceGroupId] The ID of the resource group to which you want to move the resource.
  /// [secondaryCidrBlocks] Field 'secondary_cidr_blocks' has been deprecated from provider version 1.185.0 and it will be removed in the future version. Please use the new resource 'alicloud_vpc_ipv4_cidr_block'. `secondary_cidr_blocks` attributes and `alicloud.vpc.Ipv4CidrBlock` resource cannot be used at the same time.
  /// [secondaryCidrMask] Field 'secondary_cidr_mask' has been deprecated from provider version 1.248.0. New resource 'alicloud_vpc_ipv4_cidr_block' instead.
  /// [systemRouteTableDescription] The description of the route table.
  /// [systemRouteTableName] The name of the route table.
  /// [systemRouteTableRoutePropagationEnable] Whether the system route table receives propagation routes.
  /// [tags] The tags of Vpc.
  /// [userCidrs] A list of user CIDRs.
  /// [vpcName] The new name of the VPC.
  NetworkArgs({
    this.cidrBlock,
    this.classicLinkEnabled,
    this.description,
    this.dnsHostnameStatus,
    this.dryRun,
    this.enableIpv6,
    this.forceDelete,
    this.ipv4CidrMask,
    this.ipv4IpamPoolId,
    this.ipv6CidrBlock,
    this.ipv6Isp,
    this.isDefault,
    this.name,
    this.resourceGroupId,
    this.secondaryCidrBlocks,
    this.secondaryCidrMask,
    this.systemRouteTableDescription,
    this.systemRouteTableName,
    this.systemRouteTableRoutePropagationEnable,
    this.tags,
    this.userCidrs,
    this.vpcName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'classicLinkEnabled': ?classicLinkEnabled,
      'description': ?description,
      'dnsHostnameStatus': ?dnsHostnameStatus,
      'dryRun': ?dryRun,
      'enableIpv6': ?enableIpv6,
      'forceDelete': ?forceDelete,
      'ipv4CidrMask': ?ipv4CidrMask,
      'ipv4IpamPoolId': ?ipv4IpamPoolId,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'ipv6Isp': ?ipv6Isp,
      'isDefault': ?isDefault,
      'name': ?name,
      'resourceGroupId': ?resourceGroupId,
      'secondaryCidrBlocks': ?secondaryCidrBlocks,
      'secondaryCidrMask': ?secondaryCidrMask,
      'systemRouteTableDescription': ?systemRouteTableDescription,
      'systemRouteTableName': ?systemRouteTableName,
      'systemRouteTableRoutePropagationEnable': ?systemRouteTableRoutePropagationEnable,
      'tags': ?tags,
      'userCidrs': ?userCidrs,
      'vpcName': ?vpcName,
    };
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock'] as String).input(),
      classicLinkEnabled: map['classicLinkEnabled'] == null ? null : (map['classicLinkEnabled'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      dnsHostnameStatus: map['dnsHostnameStatus'] == null ? null : (map['dnsHostnameStatus'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      enableIpv6: map['enableIpv6'] == null ? null : (map['enableIpv6'] as bool).input(),
      forceDelete: map['forceDelete'] == null ? null : (map['forceDelete'] as bool).input(),
      ipv4CidrMask: map['ipv4CidrMask'] == null ? null : (map['ipv4CidrMask'] as int).input(),
      ipv4IpamPoolId: map['ipv4IpamPoolId'] == null ? null : (map['ipv4IpamPoolId'] as String).input(),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : (map['ipv6CidrBlock'] as String).input(),
      ipv6Isp: map['ipv6Isp'] == null ? null : (map['ipv6Isp'] as String).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      secondaryCidrBlocks: map['secondaryCidrBlocks'] == null ? null : ((map['secondaryCidrBlocks'] as List).cast<String>()).input(),
      secondaryCidrMask: map['secondaryCidrMask'] == null ? null : (map['secondaryCidrMask'] as int).input(),
      systemRouteTableDescription: map['systemRouteTableDescription'] == null ? null : (map['systemRouteTableDescription'] as String).input(),
      systemRouteTableName: map['systemRouteTableName'] == null ? null : (map['systemRouteTableName'] as String).input(),
      systemRouteTableRoutePropagationEnable: map['systemRouteTableRoutePropagationEnable'] == null ? null : (map['systemRouteTableRoutePropagationEnable'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      userCidrs: map['userCidrs'] == null ? null : ((map['userCidrs'] as List).cast<String>()).input(),
      vpcName: map['vpcName'] == null ? null : (map['vpcName'] as String).input(),
    );
  }
}

