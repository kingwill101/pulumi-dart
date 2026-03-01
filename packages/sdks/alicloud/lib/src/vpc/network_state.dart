// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_ipv6_cidr_block.dart';

/// Input properties used for looking up and filtering Network resources.
class NetworkState {
  /// The CIDR block of the VPC.
  ///
  /// - You can specify one of the following CIDR blocks or their subsets as the primary IPv4 CIDR block of the VPC: 192.168.0.0/16, 172.16.0.0/12, and 10.0.0.0/8. These CIDR blocks are standard private CIDR blocks as defined by Request for Comments (RFC) documents. The subnet mask must be 8 to 28 bits in length.
  /// - You can also use a custom CIDR block other than 100.64.0.0/10, 224.0.0.0/4, 127.0.0.0/8, 169.254.0.0/16, and their subnets as the primary IPv4 CIDR block of the VPC.
  final pulumi.Input<String>? cidrBlock;
  /// The status of ClassicLink function.
  final pulumi.Input<bool>? classicLinkEnabled;
  /// The creation time of the VPC.
  final pulumi.Input<String>? createTime;
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
  /// The IPv6 CIDR block information of the VPC.
  final pulumi.Input<List<NetworkIpv6CidrBlock>>? ipv6CidrBlocks;
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
  /// The ID of the region where the VPC is located.
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group to which you want to move the resource.
  ///
  /// > **NOTE:**   You can use resource groups to facilitate resource grouping and permission management for an Alibaba Cloud. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  final pulumi.Input<String>? resourceGroupId;
  /// The ID of the system route table.
  final pulumi.Input<String>? routeTableId;
  /// The region ID of the VPC to which the route table belongs.
  final pulumi.Input<String>? routerId;
  /// . Field 'router_table_id' has been deprecated from provider version 1.227.1. New field 'route_table_id' instead.
  final pulumi.Input<String>? routerTableId;
  /// Field 'secondary_cidr_blocks' has been deprecated from provider version 1.185.0 and it will be removed in the future version. Please use the new resource 'alicloud_vpc_ipv4_cidr_block'. `secondary_cidr_blocks` attributes and `alicloud.vpc.Ipv4CidrBlock` resource cannot be used at the same time.
  final pulumi.Input<List<String>>? secondaryCidrBlocks;
  /// Field 'secondary_cidr_mask' has been deprecated from provider version 1.248.0. New resource 'alicloud_vpc_ipv4_cidr_block' instead.
  final pulumi.Input<int>? secondaryCidrMask;
  /// The status of the VPC.   `Pending`: The VPC is being configured. `Available`: The VPC is available.
  final pulumi.Input<String>? status;
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

  /// Creates a new [NetworkState].
  /// [cidrBlock] The CIDR block of the VPC.
  /// [classicLinkEnabled] The status of ClassicLink function.
  /// [createTime] The creation time of the VPC.
  /// [description] The new description of the VPC.
  /// [dnsHostnameStatus] The status of VPC DNS Hostname
  /// [dryRun] Whether to PreCheck only this request. Value:
  /// [enableIpv6] Whether to enable the IPv6 network segment. Value:
  /// [forceDelete] Force delete vpc or not.
  /// [ipv4CidrMask] Allocate VPC from The IPAM address pool by entering a mask.
  /// [ipv4IpamPoolId] The ID of the IP Address Manager (IPAM) pool that contains IPv4 addresses.
  /// [ipv6CidrBlock] The IPv6 CIDR block of the default VPC.
  /// [ipv6CidrBlocks] The IPv6 CIDR block information of the VPC.
  /// [ipv6Isp] The IPv6 address segment type of the VPC. Value:
  /// [isDefault] Specifies whether to create the default VPC in the specified region. Valid values:
  /// [name] . Field 'name' has been deprecated from provider version 1.119.0. New field 'vpc_name' instead.
  /// [regionId] The ID of the region where the VPC is located.
  /// [resourceGroupId] The ID of the resource group to which you want to move the resource.
  /// [routeTableId] The ID of the system route table.
  /// [routerId] The region ID of the VPC to which the route table belongs.
  /// [routerTableId] . Field 'router_table_id' has been deprecated from provider version 1.227.1. New field 'route_table_id' instead.
  /// [secondaryCidrBlocks] Field 'secondary_cidr_blocks' has been deprecated from provider version 1.185.0 and it will be removed in the future version. Please use the new resource 'alicloud_vpc_ipv4_cidr_block'. `secondary_cidr_blocks` attributes and `alicloud.vpc.Ipv4CidrBlock` resource cannot be used at the same time.
  /// [secondaryCidrMask] Field 'secondary_cidr_mask' has been deprecated from provider version 1.248.0. New resource 'alicloud_vpc_ipv4_cidr_block' instead.
  /// [status] The status of the VPC.   `Pending`: The VPC is being configured. `Available`: The VPC is available.
  /// [systemRouteTableDescription] The description of the route table.
  /// [systemRouteTableName] The name of the route table.
  /// [systemRouteTableRoutePropagationEnable] Whether the system route table receives propagation routes.
  /// [tags] The tags of Vpc.
  /// [userCidrs] A list of user CIDRs.
  /// [vpcName] The new name of the VPC.
  NetworkState({
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<bool>? classicLinkEnabled,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? dnsHostnameStatus,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<bool>? enableIpv6,
    pulumi.Output<bool>? forceDelete,
    pulumi.Output<int>? ipv4CidrMask,
    pulumi.Output<String>? ipv4IpamPoolId,
    pulumi.Output<String>? ipv6CidrBlock,
    pulumi.Output<List<NetworkIpv6CidrBlock>>? ipv6CidrBlocks,
    pulumi.Output<String>? ipv6Isp,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<String>? name,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? routeTableId,
    pulumi.Output<String>? routerId,
    pulumi.Output<String>? routerTableId,
    pulumi.Output<List<String>>? secondaryCidrBlocks,
    pulumi.Output<int>? secondaryCidrMask,
    pulumi.Output<String>? status,
    pulumi.Output<String>? systemRouteTableDescription,
    pulumi.Output<String>? systemRouteTableName,
    pulumi.Output<bool>? systemRouteTableRoutePropagationEnable,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? userCidrs,
    pulumi.Output<String>? vpcName,
  }) :
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      classicLinkEnabled = pulumi.Input.asOptionalInput<bool>(classicLinkEnabled),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      dnsHostnameStatus = pulumi.Input.asOptionalInput<String>(dnsHostnameStatus),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      enableIpv6 = pulumi.Input.asOptionalInput<bool>(enableIpv6),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      ipv4CidrMask = pulumi.Input.asOptionalInput<int>(ipv4CidrMask),
      ipv4IpamPoolId = pulumi.Input.asOptionalInput<String>(ipv4IpamPoolId),
      ipv6CidrBlock = pulumi.Input.asOptionalInput<String>(ipv6CidrBlock),
      ipv6CidrBlocks = pulumi.Input.asOptionalInput<List<NetworkIpv6CidrBlock>>(ipv6CidrBlocks),
      ipv6Isp = pulumi.Input.asOptionalInput<String>(ipv6Isp),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      name = pulumi.Input.asOptionalInput<String>(name),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      routeTableId = pulumi.Input.asOptionalInput<String>(routeTableId),
      routerId = pulumi.Input.asOptionalInput<String>(routerId),
      routerTableId = pulumi.Input.asOptionalInput<String>(routerTableId),
      secondaryCidrBlocks = pulumi.Input.asOptionalInput<List<String>>(secondaryCidrBlocks),
      secondaryCidrMask = pulumi.Input.asOptionalInput<int>(secondaryCidrMask),
      status = pulumi.Input.asOptionalInput<String>(status),
      systemRouteTableDescription = pulumi.Input.asOptionalInput<String>(systemRouteTableDescription),
      systemRouteTableName = pulumi.Input.asOptionalInput<String>(systemRouteTableName),
      systemRouteTableRoutePropagationEnable = pulumi.Input.asOptionalInput<bool>(systemRouteTableRoutePropagationEnable),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userCidrs = pulumi.Input.asOptionalInput<List<String>>(userCidrs),
      vpcName = pulumi.Input.asOptionalInput<String>(vpcName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'classicLinkEnabled': ?classicLinkEnabled,
      'createTime': ?createTime,
      'description': ?description,
      'dnsHostnameStatus': ?dnsHostnameStatus,
      'dryRun': ?dryRun,
      'enableIpv6': ?enableIpv6,
      'forceDelete': ?forceDelete,
      'ipv4CidrMask': ?ipv4CidrMask,
      'ipv4IpamPoolId': ?ipv4IpamPoolId,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'ipv6CidrBlocks': ?pulumi.Input.mapOptionalInputValue<List<NetworkIpv6CidrBlock>, List<Map<String, dynamic>>>(ipv6CidrBlocks, (value) => pulumi.Input.encodeList<NetworkIpv6CidrBlock, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6Isp': ?ipv6Isp,
      'isDefault': ?isDefault,
      'name': ?name,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'routeTableId': ?routeTableId,
      'routerId': ?routerId,
      'routerTableId': ?routerTableId,
      'secondaryCidrBlocks': ?secondaryCidrBlocks,
      'secondaryCidrMask': ?secondaryCidrMask,
      'status': ?status,
      'systemRouteTableDescription': ?systemRouteTableDescription,
      'systemRouteTableName': ?systemRouteTableName,
      'systemRouteTableRoutePropagationEnable': ?systemRouteTableRoutePropagationEnable,
      'tags': ?tags,
      'userCidrs': ?userCidrs,
      'vpcName': ?vpcName,
    };
  }

  factory NetworkState.fromMap(Map<String, dynamic> map) {
    return NetworkState(
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      classicLinkEnabled: map['classicLinkEnabled'] == null ? null : pulumi.Output.create<bool>(map['classicLinkEnabled'] as bool),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dnsHostnameStatus: map['dnsHostnameStatus'] == null ? null : pulumi.Output.create<String>(map['dnsHostnameStatus'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      enableIpv6: map['enableIpv6'] == null ? null : pulumi.Output.create<bool>(map['enableIpv6'] as bool),
      forceDelete: map['forceDelete'] == null ? null : pulumi.Output.create<bool>(map['forceDelete'] as bool),
      ipv4CidrMask: map['ipv4CidrMask'] == null ? null : pulumi.Output.create<int>(map['ipv4CidrMask'] as int),
      ipv4IpamPoolId: map['ipv4IpamPoolId'] == null ? null : pulumi.Output.create<String>(map['ipv4IpamPoolId'] as String),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : pulumi.Output.create<String>(map['ipv6CidrBlock'] as String),
      ipv6CidrBlocks: map['ipv6CidrBlocks'] == null ? null : pulumi.Output.create<List<NetworkIpv6CidrBlock>>(pulumi.Input.decodeList<NetworkIpv6CidrBlock>(map['ipv6CidrBlocks'], (value) => NetworkIpv6CidrBlock.fromMap((value as Map).cast<String, dynamic>()))),
      ipv6Isp: map['ipv6Isp'] == null ? null : pulumi.Output.create<String>(map['ipv6Isp'] as String),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      routeTableId: map['routeTableId'] == null ? null : pulumi.Output.create<String>(map['routeTableId'] as String),
      routerId: map['routerId'] == null ? null : pulumi.Output.create<String>(map['routerId'] as String),
      routerTableId: map['routerTableId'] == null ? null : pulumi.Output.create<String>(map['routerTableId'] as String),
      secondaryCidrBlocks: map['secondaryCidrBlocks'] == null ? null : pulumi.Output.create<List<String>>((map['secondaryCidrBlocks'] as List).cast<String>()),
      secondaryCidrMask: map['secondaryCidrMask'] == null ? null : pulumi.Output.create<int>(map['secondaryCidrMask'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      systemRouteTableDescription: map['systemRouteTableDescription'] == null ? null : pulumi.Output.create<String>(map['systemRouteTableDescription'] as String),
      systemRouteTableName: map['systemRouteTableName'] == null ? null : pulumi.Output.create<String>(map['systemRouteTableName'] as String),
      systemRouteTableRoutePropagationEnable: map['systemRouteTableRoutePropagationEnable'] == null ? null : pulumi.Output.create<bool>(map['systemRouteTableRoutePropagationEnable'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userCidrs: map['userCidrs'] == null ? null : pulumi.Output.create<List<String>>((map['userCidrs'] as List).cast<String>()),
      vpcName: map['vpcName'] == null ? null : pulumi.Output.create<String>(map['vpcName'] as String),
    );
  }
}

