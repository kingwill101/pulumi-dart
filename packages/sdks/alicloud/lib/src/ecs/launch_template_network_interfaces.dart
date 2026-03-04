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
      deleteOnRelease: (() {
        final guardedValue = map['deleteOnRelease'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryIp: (() {
        final guardedValue = map['primaryIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroupId: (() {
        final guardedValue = map['securityGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
