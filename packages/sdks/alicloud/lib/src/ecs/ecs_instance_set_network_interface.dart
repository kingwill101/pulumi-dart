// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EcsInstanceSetNetworkInterface {
  /// The description of ENI.
  final pulumi.Input<String>? description;

  /// The name of ENI.
  final pulumi.Input<String>? networkInterfaceName;

  /// The primary private IP address of ENI.
  final pulumi.Input<String>? primaryIpAddress;

  /// The ID of the security group to which to assign secondary ENI.
  final pulumi.Input<String> securityGroupId;

  /// The ID of the vSwitch to which to connect ENI.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [EcsInstanceSetNetworkInterface].
  /// [description] The description of ENI.
  /// [networkInterfaceName] The name of ENI.
  /// [primaryIpAddress] The primary private IP address of ENI.
  /// [securityGroupId] The ID of the security group to which to assign secondary ENI.
  /// [vswitchId] The ID of the vSwitch to which to connect ENI.
  EcsInstanceSetNetworkInterface({
    this.description,
    this.networkInterfaceName,
    this.primaryIpAddress,
    required this.securityGroupId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'networkInterfaceName': ?networkInterfaceName,
      'primaryIpAddress': ?primaryIpAddress,
      'securityGroupId': securityGroupId,
      'vswitchId': ?vswitchId,
    };
  }

  factory EcsInstanceSetNetworkInterface.fromMap(Map<String, dynamic> map) {
    return EcsInstanceSetNetworkInterface(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkInterfaceName: (() {
        final guardedValue = map['networkInterfaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryIpAddress: (() {
        final guardedValue = map['primaryIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
