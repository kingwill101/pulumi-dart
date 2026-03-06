// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetShardingNetworkPublicAddressesAddress {
  /// The db instance id.
  final pulumi.Input<String> dbInstanceId;
  /// The remaining duration of the classic network address. Unit: `seconds`.
  final pulumi.Input<String> expiredTime;
  /// The IP address of the instance.
  final pulumi.Input<String> ipAddress;
  /// The endpoint of the instance.
  final pulumi.Input<String> networkAddress;
  /// The network type.
  final pulumi.Input<String> networkType;
  /// The ID of the `mongos`, `shard`, or `Configserver` node in the sharded cluster instance.
  final pulumi.Input<String> nodeId;
  /// The type of the node.
  final pulumi.Input<String> nodeType;
  /// The port number.
  final pulumi.Input<String> port;
  /// The role of the node.
  final pulumi.Input<String> role;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;
  /// The vSwitch ID of the VPC.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetShardingNetworkPublicAddressesAddress].
  /// [dbInstanceId] The db instance id.
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
  const GetShardingNetworkPublicAddressesAddress({
    required this.dbInstanceId,
    required this.expiredTime,
    required this.ipAddress,
    required this.networkAddress,
    required this.networkType,
    required this.nodeId,
    required this.nodeType,
    required this.port,
    required this.role,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'expiredTime': expiredTime,
      'ipAddress': ipAddress,
      'networkAddress': networkAddress,
      'networkType': networkType,
      'nodeId': nodeId,
      'nodeType': nodeType,
      'port': port,
      'role': role,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetShardingNetworkPublicAddressesAddress.fromMap(Map<String, dynamic> map) {
    return GetShardingNetworkPublicAddressesAddress(
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      networkAddress: pulumi.Input.fromValue(map['networkAddress'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      nodeId: pulumi.Input.fromValue(map['nodeId'] as String),
      nodeType: pulumi.Input.fromValue(map['nodeType'] as String),
      port: pulumi.Input.fromValue(map['port'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

