// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerGroupServer {
  /// (Optional, Computed, Int) The port that is used by the backend server.
  final pulumi.Input<int>? port;
  /// The server group ID.
  final pulumi.Input<String>? serverGroupId;
  /// The backend server ID.
  ///
  /// - If the server group is of the `Instance` type, set this parameter to the IDs of servers of the `Ecs`, `Eni`, or `Eci` type.
  /// - If the server group is of the `Ip` type, set ServerId to IP addresses.
  final pulumi.Input<String> serverId;
  /// The IP address of the backend server.
  final pulumi.Input<String>? serverIp;
  /// The type of the backend server. Valid values:
  ///
  /// - `Ecs`: Elastic Compute Service (ECS) instance
  /// - `Eni`: elastic network interface (ENI)
  /// - `Eci`: elastic container instance
  /// - `Ip`: IP address
  final pulumi.Input<String> serverType;
  /// Indicates the status of the backend server.
  final pulumi.Input<String>? status;

  /// Creates a new [ServerGroupServer].
  /// [port] (Optional, Computed, Int) The port that is used by the backend server.
  /// [serverGroupId] The server group ID.
  /// [serverId] The backend server ID.
  /// [serverIp] The IP address of the backend server.
  /// [serverType] The type of the backend server. Valid values:
  /// [status] Indicates the status of the backend server.
  const ServerGroupServer({
    this.port,
    this.serverGroupId,
    required this.serverId,
    this.serverIp,
    required this.serverType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'serverGroupId': ?serverGroupId,
      'serverId': serverId,
      'serverIp': ?serverIp,
      'serverType': serverType,
      'status': ?status,
    };
  }

  factory ServerGroupServer.fromMap(Map<String, dynamic> map) {
    return ServerGroupServer(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serverGroupId: (() { final guardedValue = map['serverGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      serverIp: (() { final guardedValue = map['serverIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverType: pulumi.Input.fromValue(map['serverType'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

