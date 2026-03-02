// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateNetworkInterfaces {
  final pulumi.Input<bool>? deleteOnRelease;
  /// The ENI description.
  final pulumi.Input<String>? description;
  /// ENI name.
  final pulumi.Input<String>? name;
  /// The primary private IP address of the ENI.
  final pulumi.Input<String>? primaryIp;
  /// The security group ID must be one in the same VPC.
  final pulumi.Input<String>? securityGroupId;
  /// The VSwitch ID for ENI. The instance must be in the same zone of the same VPC network as the ENI, but they may belong to different VSwitches.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [LaunchTemplateNetworkInterfaces].
  /// [deleteOnRelease] Optional.
  /// [description] The ENI description.
  /// [name] ENI name.
  /// [primaryIp] The primary private IP address of the ENI.
  /// [securityGroupId] The security group ID must be one in the same VPC.
  /// [vswitchId] The VSwitch ID for ENI. The instance must be in the same zone of the same VPC network as the ENI, but they may belong to different VSwitches.
  LaunchTemplateNetworkInterfaces({
    this.deleteOnRelease,
    this.description,
    this.name,
    this.primaryIp,
    this.securityGroupId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnRelease': ?deleteOnRelease,
      'description': ?description,
      'name': ?name,
      'primaryIp': ?primaryIp,
      'securityGroupId': ?securityGroupId,
      'vswitchId': ?vswitchId,
    };
  }

  factory LaunchTemplateNetworkInterfaces.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateNetworkInterfaces(
      deleteOnRelease: map['deleteOnRelease'] == null ? null : (map['deleteOnRelease']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      primaryIp: map['primaryIp'] == null ? null : (map['primaryIp']! as String).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

