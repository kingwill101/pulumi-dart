// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSwitchesVswitch {
  /// The available ip address count of the vSwitch.
  final pulumi.Input<int> availableIpAddressCount;
  /// Filter results by a specific CIDR block. For example: "172.16.0.0/12".
  final pulumi.Input<String> cidrBlock;
  /// Time of creation.
  final pulumi.Input<String> creationTime;
  /// Description of the vSwitch.
  final pulumi.Input<String> description;
  /// ID of the vSwitch.
  final pulumi.Input<String> id;
  /// The IPv6 CIDR block of the switch.
  final pulumi.Input<String> ipv6CidrBlock;
  /// Indicate whether the vSwitch is created by the system.
  final pulumi.Input<bool> isDefault;
  /// Name of the vSwitch.
  final pulumi.Input<String> name;
  /// The Id of resource group which VSWitch belongs.
  final pulumi.Input<String> resourceGroupId;
  /// The route table ID of the vSwitch.
  final pulumi.Input<String> routeTableId;
  /// The status of the vSwitch. Valid values: `Available` and `Pending`.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// ID of the VPC that owns the vSwitch.
  final pulumi.Input<String> vpcId;
  /// ID of the vSwitch.
  final pulumi.Input<String> vswitchId;
  /// The name of the vSwitch.
  final pulumi.Input<String> vswitchName;
  /// The availability zone of the vSwitch.
  final pulumi.Input<String> zoneId;

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
      availableIpAddressCount: (map['availableIpAddressCount'] as int).input(),
      cidrBlock: (map['cidrBlock'] as String).input(),
      creationTime: (map['creationTime'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      ipv6CidrBlock: (map['ipv6CidrBlock'] as String).input(),
      isDefault: (map['isDefault'] as bool).input(),
      name: (map['name'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      routeTableId: (map['routeTableId'] as String).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      vswitchName: (map['vswitchName'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

