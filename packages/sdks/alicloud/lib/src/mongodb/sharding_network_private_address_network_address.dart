// ignore_for_file: unused_element, unnecessary_cast


class ShardingNetworkPrivateAddressNetworkAddress {
  /// The remaining duration of the classic network endpoint.
  final String? expiredTime;
  /// The IP address of the instance.
  final String? ipAddress;
  /// The connection string of the instance.
  final String? networkAddress;
  /// The network type of the instance.
  final String? networkType;
  /// The ID of the Shard node or ConfigServer node.
  final String? nodeId;
  /// The type of the node.
  final String? nodeType;
  /// The port that is used to connect to the instance.
  final String? port;
  /// The role of the node.
  final String? role;
  /// The ID of the VPC.
  final String? vpcId;
  /// The ID of the vSwitch in the VPC.
  final String? vswitchId;

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
  ShardingNetworkPrivateAddressNetworkAddress({
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
      expiredTime: map['expiredTime'] == null ? null : map['expiredTime'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      networkAddress: map['networkAddress'] == null ? null : map['networkAddress'] as String,
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
      nodeType: map['nodeType'] == null ? null : map['nodeType'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      role: map['role'] == null ? null : map['role'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
    );
  }
}

