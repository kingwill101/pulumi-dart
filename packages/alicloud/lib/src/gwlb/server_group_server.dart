// ignore_for_file: unused_element, unnecessary_cast


class ServerGroupServer {
  /// (Optional, Computed, Int) The port that is used by the backend server.
  final int? port;
  /// The server group ID.
  final String? serverGroupId;
  /// The backend server ID.
  ///
  /// - If the server group is of the `Instance` type, set this parameter to the IDs of servers of the `Ecs`, `Eni`, or `Eci` type.
  /// - If the server group is of the `Ip` type, set ServerId to IP addresses.
  final String serverId;
  /// The IP address of the backend server.
  final String? serverIp;
  /// The type of the backend server. Valid values:
  ///
  /// - `Ecs`: Elastic Compute Service (ECS) instance
  /// - `Eni`: elastic network interface (ENI)
  /// - `Eci`: elastic container instance
  /// - `Ip`: IP address
  final String serverType;
  /// Indicates the status of the backend server.
  final String? status;

  /// Creates a new [ServerGroupServer].
  /// [port] (Optional, Computed, Int) The port that is used by the backend server.
  /// [serverGroupId] The server group ID.
  /// [serverId] The backend server ID.
  /// [serverIp] The IP address of the backend server.
  /// [serverType] The type of the backend server. Valid values:
  /// [status] Indicates the status of the backend server.
  ServerGroupServer({
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
      port: map['port'] == null ? null : map['port'] as int,
      serverGroupId: map['serverGroupId'] == null ? null : map['serverGroupId'] as String,
      serverId: map['serverId'] as String,
      serverIp: map['serverIp'] == null ? null : map['serverIp'] as String,
      serverType: map['serverType'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

