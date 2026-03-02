// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionsConnection {
  /// The connection string of the instance.
  final pulumi.Input<String> connectionString;
  /// The network type of the instance.
  final pulumi.Input<String> dbInstanceNetType;
  /// The expiration time of the classic network address.
  final pulumi.Input<String> expiredTime;
  final pulumi.Input<String> id;
  final pulumi.Input<String> instanceId;
  /// The IP address of the instance.
  final pulumi.Input<String> ipAddress;
  /// The port number of the instance.
  final pulumi.Input<String> port;
  /// The remaining validity period of the endpoint of the classic network.
  final pulumi.Input<String> upgradeable;
  /// The ID of the VPC where the instance is deployed.
  final pulumi.Input<String> vpcId;
  /// The ID of the instance. It is returned only when the value of the DBInstanceNetType parameter is 2 (indicating VPC).
  final pulumi.Input<String> vpcInstanceId;
  /// The ID of the vSwitch.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetConnectionsConnection].
  /// [connectionString] The connection string of the instance.
  /// [dbInstanceNetType] The network type of the instance.
  /// [expiredTime] The expiration time of the classic network address.
  /// [id] Required.
  /// [instanceId] Required.
  /// [ipAddress] The IP address of the instance.
  /// [port] The port number of the instance.
  /// [upgradeable] The remaining validity period of the endpoint of the classic network.
  /// [vpcId] The ID of the VPC where the instance is deployed.
  /// [vpcInstanceId] The ID of the instance. It is returned only when the value of the DBInstanceNetType parameter is 2 (indicating VPC).
  /// [vswitchId] The ID of the vSwitch.
  GetConnectionsConnection({
    required this.connectionString,
    required this.dbInstanceNetType,
    required this.expiredTime,
    required this.id,
    required this.instanceId,
    required this.ipAddress,
    required this.port,
    required this.upgradeable,
    required this.vpcId,
    required this.vpcInstanceId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'dbInstanceNetType': dbInstanceNetType,
      'expiredTime': expiredTime,
      'id': id,
      'instanceId': instanceId,
      'ipAddress': ipAddress,
      'port': port,
      'upgradeable': upgradeable,
      'vpcId': vpcId,
      'vpcInstanceId': vpcInstanceId,
      'vswitchId': vswitchId,
    };
  }

  factory GetConnectionsConnection.fromMap(Map<String, dynamic> map) {
    return GetConnectionsConnection(
      connectionString: (map['connectionString'] as String).input(),
      dbInstanceNetType: (map['dbInstanceNetType'] as String).input(),
      expiredTime: (map['expiredTime'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      port: (map['port'] as String).input(),
      upgradeable: (map['upgradeable'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vpcInstanceId: (map['vpcInstanceId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

