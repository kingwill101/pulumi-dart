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
      availableIpAddressCount: pulumi.Input.fromValue(
        map['availableIpAddressCount'] as int,
      ),
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipv6CidrBlock: pulumi.Input.fromValue(map['ipv6CidrBlock'] as String),
      isDefault: pulumi.Input.fromValue(map['isDefault'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      routeTableId: pulumi.Input.fromValue(map['routeTableId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      vswitchName: pulumi.Input.fromValue(map['vswitchName'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
