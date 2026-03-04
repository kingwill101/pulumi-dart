// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MasterSlaveServerGroupServer {
  /// Determine if the server is executing. Valid value 0, 1.
  final pulumi.Input<int>? isBackup;

  /// The port used by the backend server. Valid value range: [1-65535].
  final pulumi.Input<int> port;

  /// A list backend server ID (ECS instance ID).
  final pulumi.Input<String> serverId;

  /// The server type of the backend server. Valid value Master, Slave.
  final pulumi.Input<String>? serverType;

  /// Type of the backend server. Valid value ecs, eni. Default to eni.
  final pulumi.Input<String>? type;

  /// Weight of the backend server. Valid value range: [0-100]. Default to 100.
  final pulumi.Input<int>? weight;

  /// Creates a new [MasterSlaveServerGroupServer].
  /// [isBackup] Determine if the server is executing. Valid value 0, 1.
  /// [port] The port used by the backend server. Valid value range: [1-65535].
  /// [serverId] A list backend server ID (ECS instance ID).
  /// [serverType] The server type of the backend server. Valid value Master, Slave.
  /// [type] Type of the backend server. Valid value ecs, eni. Default to eni.
  /// [weight] Weight of the backend server. Valid value range: [0-100]. Default to 100.
  MasterSlaveServerGroupServer({
    this.isBackup,
    required this.port,
    required this.serverId,
    this.serverType,
    this.type,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isBackup': ?isBackup,
      'port': port,
      'serverId': serverId,
      'serverType': ?serverType,
      'type': ?type,
      'weight': ?weight,
    };
  }

  factory MasterSlaveServerGroupServer.fromMap(Map<String, dynamic> map) {
    return MasterSlaveServerGroupServer(
      isBackup: (() {
        final guardedValue = map['isBackup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      serverType: (() {
        final guardedValue = map['serverType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
