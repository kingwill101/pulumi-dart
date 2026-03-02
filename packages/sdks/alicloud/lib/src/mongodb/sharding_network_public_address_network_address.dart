// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShardingNetworkPublicAddressNetworkAddress {
  /// The remaining duration of the classic network address. Unit: `seconds`.
  final pulumi.Input<String>? expiredTime;
  /// The IP address of the instance.
  final pulumi.Input<String>? ipAddress;
  /// The endpoint of the instance.
  final pulumi.Input<String>? networkAddress;
  /// The network type.
  final pulumi.Input<String>? networkType;
  /// The ID of the `mongos`, `shard`, or `Configserver` node in the sharded cluster instance.
  final pulumi.Input<String>? nodeId;
  /// The type of the node.
  final pulumi.Input<String>? nodeType;
  /// The port number.
  final pulumi.Input<String>? port;
  /// The role of the node.
  final pulumi.Input<String>? role;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;
  /// The vSwitch ID of the VPC.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [ShardingNetworkPublicAddressNetworkAddress].
  /// [expiredTime] The remaining duration of the classic network address. Unit: `seconds`.
  /// [ipAddress] The IP address of the instance.
  /// [networkAddress] The endpoint of the instance.
  /// [networkType] The network type.
  /// [nodeId] The ID of the `mongos`, `shard`, or `Configserver` node in the sharded cluster instance.
  /// [nodeType] The type of the node.
  /// [port] The port number.
  /// [role] The role of the node.
  /// [vpcId] The ID of the VPC.
  /// [vswitchId] The vSwitch ID of the VPC.
  ShardingNetworkPublicAddressNetworkAddress({
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

  factory ShardingNetworkPublicAddressNetworkAddress.fromMap(Map<String, dynamic> map) {
    return ShardingNetworkPublicAddressNetworkAddress(
      expiredTime: map['expiredTime'] == null ? null : (map['expiredTime']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      networkAddress: map['networkAddress'] == null ? null : (map['networkAddress']! as String).input(),
      networkType: map['networkType'] == null ? null : (map['networkType']! as String).input(),
      nodeId: map['nodeId'] == null ? null : (map['nodeId']! as String).input(),
      nodeType: map['nodeType'] == null ? null : (map['nodeType']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

