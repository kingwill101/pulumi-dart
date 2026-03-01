// ignore_for_file: unused_element, unnecessary_cast


class GetNetworksVpc {
  /// Filter results by a specific CIDR block. For example: "172.16.0.0/12".
  final String cidrBlock;
  /// Time of creation.
  final String creationTime;
  /// Description of the VPC
  final String description;
  /// The ID of dhcp options set.
  final String dhcpOptionsSetId;
  /// The status of the DHCP options set. Valid values: `Available`, `InUse`, `Deleted`, `Pending`.
  final String dhcpOptionsSetStatus;
  /// Indicates whether the Domain Name System (DNS) feature is enabled.
  final String dnsHostnameStatus;
  /// ID of the VPC.
  final String id;
  /// The IPv6 CIDR block of the VPC.
  final String ipv6CidrBlock;
  /// Indicate whether the VPC is the default one in the specified region.
  final bool isDefault;
  /// ID of the region where the VPC is located.
  final String regionId;
  /// The Id of resource group which VPC belongs.
  final String resourceGroupId;
  /// Route table ID of the VRouter.
  final String routeTableId;
  /// The ID of the VRouter.
  final String routerId;
  /// A list of secondary IPv4 CIDR blocks of the VPC.
  final List<String> secondaryCidrBlocks;
  /// Filter results by a specific status. Valid value are `Pending` and `Available`.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// A list of user CIDRs.
  final List<String> userCidrs;
  /// ID of the VPC.
  final String vpcId;
  /// The name of the VPC.
  final String vpcName;
  /// ID of the VRouter.
  final String vrouterId;
  /// List of vSwitch IDs in the specified VPC
  final List<String> vswitchIds;

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
  GetNetworksVpc({
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
      cidrBlock: map['cidrBlock'] as String,
      creationTime: map['creationTime'] as String,
      description: map['description'] as String,
      dhcpOptionsSetId: map['dhcpOptionsSetId'] as String,
      dhcpOptionsSetStatus: map['dhcpOptionsSetStatus'] as String,
      dnsHostnameStatus: map['dnsHostnameStatus'] as String,
      id: map['id'] as String,
      ipv6CidrBlock: map['ipv6CidrBlock'] as String,
      isDefault: map['isDefault'] as bool,
      regionId: map['regionId'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      routeTableId: map['routeTableId'] as String,
      routerId: map['routerId'] as String,
      secondaryCidrBlocks: (map['secondaryCidrBlocks'] as List).cast<String>(),
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      userCidrs: (map['userCidrs'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
      vpcName: map['vpcName'] as String,
      vrouterId: map['vrouterId'] as String,
      vswitchIds: (map['vswitchIds'] as List).cast<String>(),
    );
  }
}

