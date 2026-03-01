// ignore_for_file: unused_element, unnecessary_cast


class GetShardingNetworkPublicAddressesAddress {
  /// The db instance id.
  final String dbInstanceId;
  /// The remaining duration of the classic network address. Unit: `seconds`.
  final String expiredTime;
  /// The IP address of the instance.
  final String ipAddress;
  /// The endpoint of the instance.
  final String networkAddress;
  /// The network type.
  final String networkType;
  /// The ID of the `mongos`, `shard`, or `Configserver` node in the sharded cluster instance.
  final String nodeId;
  /// The type of the node.
  final String nodeType;
  /// The port number.
  final String port;
  /// The role of the node.
  final String role;
  /// The ID of the VPC.
  final String vpcId;
  /// The vSwitch ID of the VPC.
  final String vswitchId;

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
  GetShardingNetworkPublicAddressesAddress({
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
      dbInstanceId: map['dbInstanceId'] as String,
      expiredTime: map['expiredTime'] as String,
      ipAddress: map['ipAddress'] as String,
      networkAddress: map['networkAddress'] as String,
      networkType: map['networkType'] as String,
      nodeId: map['nodeId'] as String,
      nodeType: map['nodeType'] as String,
      port: map['port'] as String,
      role: map['role'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

