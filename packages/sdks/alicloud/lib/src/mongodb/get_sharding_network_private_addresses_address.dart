// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetShardingNetworkPrivateAddressesAddress {
  /// The db instance id.
  final pulumi.Input<String> dbInstanceId;
  /// The remaining duration of the classic network address. Unit: `seconds`.
  final pulumi.Input<String> expiredTime;
  /// The IP address of the instance.
  final pulumi.Input<String> ipAddress;
  /// The endpoint of the instance.
  final pulumi.Input<String> networkAddress;
  /// The type of the network.
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

  /// Creates a new [GetShardingNetworkPrivateAddressesAddress].
  /// [dbInstanceId] The db instance id.
  /// [expiredTime] The remaining duration of the classic network address. Unit: `seconds`.
  /// [ipAddress] The IP address of the instance.
  /// [networkAddress] The endpoint of the instance.
  /// [networkType] The type of the network.
  /// [nodeId] The ID of the `mongos`, `shard`, or `Configserver` node in the sharded cluster instance.
  /// [nodeType] The type of the node.
  /// [port] The port number.
  /// [role] The role of the node.
  /// [vpcId] The ID of the VPC.
  /// [vswitchId] The vSwitch ID of the VPC.
  GetShardingNetworkPrivateAddressesAddress({
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

  factory GetShardingNetworkPrivateAddressesAddress.fromMap(Map<String, dynamic> map) {
    return GetShardingNetworkPrivateAddressesAddress(
      dbInstanceId: (map['dbInstanceId'] as String).input(),
      expiredTime: (map['expiredTime'] as String).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      networkAddress: (map['networkAddress'] as String).input(),
      networkType: (map['networkType'] as String).input(),
      nodeId: (map['nodeId'] as String).input(),
      nodeType: (map['nodeType'] as String).input(),
      port: (map['port'] as String).input(),
      role: (map['role'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

