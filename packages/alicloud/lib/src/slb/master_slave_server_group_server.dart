// ignore_for_file: unused_element, unnecessary_cast


class MasterSlaveServerGroupServer {
  /// Determine if the server is executing. Valid value 0, 1.
  final int? isBackup;
  /// The port used by the backend server. Valid value range: [1-65535].
  final int port;
  /// A list backend server ID (ECS instance ID).
  final String serverId;
  /// The server type of the backend server. Valid value Master, Slave.
  final String? serverType;
  /// Type of the backend server. Valid value ecs, eni. Default to eni.
  final String? type;
  /// Weight of the backend server. Valid value range: [0-100]. Default to 100.
  final int? weight;

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
      isBackup: map['isBackup'] == null ? null : map['isBackup'] as int,
      port: map['port'] as int,
      serverId: map['serverId'] as String,
      serverType: map['serverType'] == null ? null : map['serverType'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

