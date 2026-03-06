// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShardingNetworkPrivateAddressNetworkAddress {
  /// The remaining duration of the classic network endpoint.
  final pulumi.Input<String>? expiredTime;
  /// The IP address of the instance.
  final pulumi.Input<String>? ipAddress;
  /// The connection string of the instance.
  final pulumi.Input<String>? networkAddress;
  /// The network type of the instance.
  final pulumi.Input<String>? networkType;
  /// The ID of the Shard node or ConfigServer node.
  final pulumi.Input<String>? nodeId;
  /// The type of the node.
  final pulumi.Input<String>? nodeType;
  /// The port that is used to connect to the instance.
  final pulumi.Input<String>? port;
  /// The role of the node.
  final pulumi.Input<String>? role;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;
  /// The ID of the vSwitch in the VPC.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [ShardingNetworkPrivateAddressNetworkAddress].
  /// [expiredTime] The remaining duration of the classic network endpoint.
  /// [ipAddress] The IP address of the instance.
  /// [networkAddress] The connection string of the instance.
  /// [networkType] The network type of the instance.
  /// [nodeId] The ID of the Shard node or ConfigServer node.
  /// [nodeType] The type of the node.
  /// [port] The port that is used to connect to the instance.
  /// [role] The role of the node.
  /// [vpcId] The ID of the VPC.
  /// [vswitchId] The ID of the vSwitch in the VPC.
  const ShardingNetworkPrivateAddressNetworkAddress({
    this.expiredTime,
    this.ipAddress,
    this.networkAddress,
    this.networkType,
    this.nodeId,
    this.nodeType,
    this.port,
    this.role,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiredTime': ?expiredTime,
      'ipAddress': ?ipAddress,
      'networkAddress': ?networkAddress,
      'networkType': ?networkType,
      'nodeId': ?nodeId,
      'nodeType': ?nodeType,
      'port': ?port,
      'role': ?role,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory ShardingNetworkPrivateAddressNetworkAddress.fromMap(Map<String, dynamic> map) {
    return ShardingNetworkPrivateAddressNetworkAddress(
      expiredTime: (() { final guardedValue = map['expiredTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAddress: (() { final guardedValue = map['networkAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

