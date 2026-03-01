// ignore_for_file: unused_element, unnecessary_cast


class GetSwitchesVswitch {
  /// The available ip address count of the vSwitch.
  final int availableIpAddressCount;
  /// Filter results by a specific CIDR block. For example: "172.16.0.0/12".
  final String cidrBlock;
  /// Time of creation.
  final String creationTime;
  /// Description of the vSwitch.
  final String description;
  /// ID of the vSwitch.
  final String id;
  /// The IPv6 CIDR block of the switch.
  final String ipv6CidrBlock;
  /// Indicate whether the vSwitch is created by the system.
  final bool isDefault;
  /// Name of the vSwitch.
  final String name;
  /// The Id of resource group which VSWitch belongs.
  final String resourceGroupId;
  /// The route table ID of the vSwitch.
  final String routeTableId;
  /// The status of the vSwitch. Valid values: `Available` and `Pending`.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// ID of the VPC that owns the vSwitch.
  final String vpcId;
  /// ID of the vSwitch.
  final String vswitchId;
  /// The name of the vSwitch.
  final String vswitchName;
  /// The availability zone of the vSwitch.
  final String zoneId;

  /// Creates a new [GetSwitchesVswitch].
  /// [availableIpAddressCount] The available ip address count of the vSwitch.
  /// [cidrBlock] Filter results by a specific CIDR block. For example: "172.16.0.0/12".
  /// [creationTime] Time of creation.
  /// [description] Description of the vSwitch.
  /// [id] ID of the vSwitch.
  /// [ipv6CidrBlock] The IPv6 CIDR block of the switch.
  /// [isDefault] Indicate whether the vSwitch is created by the system.
  /// [name] Name of the vSwitch.
  /// [resourceGroupId] The Id of resource group which VSWitch belongs.
  /// [routeTableId] The route table ID of the vSwitch.
  /// [status] The status of the vSwitch. Valid values: `Available` and `Pending`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] ID of the VPC that owns the vSwitch.
  /// [vswitchId] ID of the vSwitch.
  /// [vswitchName] The name of the vSwitch.
  /// [zoneId] The availability zone of the vSwitch.
  GetSwitchesVswitch({
    required this.availableIpAddressCount,
    required this.cidrBlock,
    required this.creationTime,
    required this.description,
    required this.id,
    required this.ipv6CidrBlock,
    required this.isDefault,
    required this.name,
    required this.resourceGroupId,
    required this.routeTableId,
    required this.status,
    required this.tags,
    required this.vpcId,
    required this.vswitchId,
    required this.vswitchName,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableIpAddressCount': availableIpAddressCount,
      'cidrBlock': cidrBlock,
      'creationTime': creationTime,
      'description': description,
      'id': id,
      'ipv6CidrBlock': ipv6CidrBlock,
      'isDefault': isDefault,
      'name': name,
      'resourceGroupId': resourceGroupId,
      'routeTableId': routeTableId,
      'status': status,
      'tags': tags,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'vswitchName': vswitchName,
      'zoneId': zoneId,
    };
  }

  factory GetSwitchesVswitch.fromMap(Map<String, dynamic> map) {
    return GetSwitchesVswitch(
      availableIpAddressCount: map['availableIpAddressCount'] as int,
      cidrBlock: map['cidrBlock'] as String,
      creationTime: map['creationTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      ipv6CidrBlock: map['ipv6CidrBlock'] as String,
      isDefault: map['isDefault'] as bool,
      name: map['name'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      routeTableId: map['routeTableId'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      vswitchName: map['vswitchName'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

