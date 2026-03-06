// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworksVpc {
  /// Filter results by a specific CIDR block. For example: "172.16.0.0/12".
  final pulumi.Input<String> cidrBlock;
  /// Time of creation.
  final pulumi.Input<String> creationTime;
  /// Description of the VPC
  final pulumi.Input<String> description;
  /// The ID of dhcp options set.
  final pulumi.Input<String> dhcpOptionsSetId;
  /// The status of the DHCP options set. Valid values: `Available`, `InUse`, `Deleted`, `Pending`.
  final pulumi.Input<String> dhcpOptionsSetStatus;
  /// Indicates whether the Domain Name System (DNS) feature is enabled.
  final pulumi.Input<String> dnsHostnameStatus;
  /// ID of the VPC.
  final pulumi.Input<String> id;
  /// The IPv6 CIDR block of the VPC.
  final pulumi.Input<String> ipv6CidrBlock;
  /// Indicate whether the VPC is the default one in the specified region.
  final pulumi.Input<bool> isDefault;
  /// ID of the region where the VPC is located.
  final pulumi.Input<String> regionId;
  /// The Id of resource group which VPC belongs.
  final pulumi.Input<String> resourceGroupId;
  /// Route table ID of the VRouter.
  final pulumi.Input<String> routeTableId;
  /// The ID of the VRouter.
  final pulumi.Input<String> routerId;
  /// A list of secondary IPv4 CIDR blocks of the VPC.
  final pulumi.Input<List<String>> secondaryCidrBlocks;
  /// Filter results by a specific status. Valid value are `Pending` and `Available`.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// A list of user CIDRs.
  final pulumi.Input<List<String>> userCidrs;
  /// ID of the VPC.
  final pulumi.Input<String> vpcId;
  /// The name of the VPC.
  final pulumi.Input<String> vpcName;
  /// ID of the VRouter.
  final pulumi.Input<String> vrouterId;
  /// List of vSwitch IDs in the specified VPC
  final pulumi.Input<List<String>> vswitchIds;

  /// Creates a new [GetNetworksVpc].
  /// [cidrBlock] Filter results by a specific CIDR block. For example: "172.16.0.0/12".
  /// [creationTime] Time of creation.
  /// [description] Description of the VPC
  /// [dhcpOptionsSetId] The ID of dhcp options set.
  /// [dhcpOptionsSetStatus] The status of the DHCP options set. Valid values: `Available`, `InUse`, `Deleted`, `Pending`.
  /// [dnsHostnameStatus] Indicates whether the Domain Name System (DNS) feature is enabled.
  /// [id] ID of the VPC.
  /// [ipv6CidrBlock] The IPv6 CIDR block of the VPC.
  /// [isDefault] Indicate whether the VPC is the default one in the specified region.
  /// [regionId] ID of the region where the VPC is located.
  /// [resourceGroupId] The Id of resource group which VPC belongs.
  /// [routeTableId] Route table ID of the VRouter.
  /// [routerId] The ID of the VRouter.
  /// [secondaryCidrBlocks] A list of secondary IPv4 CIDR blocks of the VPC.
  /// [status] Filter results by a specific status. Valid value are `Pending` and `Available`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [userCidrs] A list of user CIDRs.
  /// [vpcId] ID of the VPC.
  /// [vpcName] The name of the VPC.
  /// [vrouterId] ID of the VRouter.
  /// [vswitchIds] List of vSwitch IDs in the specified VPC
  const GetNetworksVpc({
    required this.cidrBlock,
    required this.creationTime,
    required this.description,
    required this.dhcpOptionsSetId,
    required this.dhcpOptionsSetStatus,
    required this.dnsHostnameStatus,
    required this.id,
    required this.ipv6CidrBlock,
    required this.isDefault,
    required this.regionId,
    required this.resourceGroupId,
    required this.routeTableId,
    required this.routerId,
    required this.secondaryCidrBlocks,
    required this.status,
    required this.tags,
    required this.userCidrs,
    required this.vpcId,
    required this.vpcName,
    required this.vrouterId,
    required this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'creationTime': creationTime,
      'description': description,
      'dhcpOptionsSetId': dhcpOptionsSetId,
      'dhcpOptionsSetStatus': dhcpOptionsSetStatus,
      'dnsHostnameStatus': dnsHostnameStatus,
      'id': id,
      'ipv6CidrBlock': ipv6CidrBlock,
      'isDefault': isDefault,
      'regionId': regionId,
      'resourceGroupId': resourceGroupId,
      'routeTableId': routeTableId,
      'routerId': routerId,
      'secondaryCidrBlocks': secondaryCidrBlocks,
      'status': status,
      'tags': tags,
      'userCidrs': userCidrs,
      'vpcId': vpcId,
      'vpcName': vpcName,
      'vrouterId': vrouterId,
      'vswitchIds': vswitchIds,
    };
  }

  factory GetNetworksVpc.fromMap(Map<String, dynamic> map) {
    return GetNetworksVpc(
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      dhcpOptionsSetId: pulumi.Input.fromValue(map['dhcpOptionsSetId'] as String),
      dhcpOptionsSetStatus: pulumi.Input.fromValue(map['dhcpOptionsSetStatus'] as String),
      dnsHostnameStatus: pulumi.Input.fromValue(map['dnsHostnameStatus'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipv6CidrBlock: pulumi.Input.fromValue(map['ipv6CidrBlock'] as String),
      isDefault: pulumi.Input.fromValue(map['isDefault'] as bool),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      routeTableId: pulumi.Input.fromValue(map['routeTableId'] as String),
      routerId: pulumi.Input.fromValue(map['routerId'] as String),
      secondaryCidrBlocks: pulumi.Input.fromValue((map['secondaryCidrBlocks'] as List).cast<String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      userCidrs: pulumi.Input.fromValue((map['userCidrs'] as List).cast<String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vpcName: pulumi.Input.fromValue(map['vpcName'] as String),
      vrouterId: pulumi.Input.fromValue(map['vrouterId'] as String),
      vswitchIds: pulumi.Input.fromValue((map['vswitchIds'] as List).cast<String>()),
    );
  }
}

