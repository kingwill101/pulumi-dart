// ignore_for_file: unused_element, unnecessary_cast


class GetServerGroupsGroupServer {
  /// The description of the server.
  final String description;
  /// The port that is used by the server.
  final int port;
  /// The ID of the ECS instance, ENI instance or ECI instance.
  final String serverId;
  /// The IP address of the ENI instance when it is in the inclusive ENI mode.
  final String serverIp;
  /// The type of the server. The type of the server.
  final String serverType;
  /// The status of the Server Group. Valid values: `Available`, `Configuring`, `Provisioning`.
  final String status;
  /// The weight of the server.
  final int weight;

  /// Creates a new [GetServerGroupsGroupServer].
  /// [description] The description of the server.
  /// [port] The port that is used by the server.
  /// [serverId] The ID of the ECS instance, ENI instance or ECI instance.
  /// [serverIp] The IP address of the ENI instance when it is in the inclusive ENI mode.
  /// [serverType] The type of the server. The type of the server.
  /// [status] The status of the Server Group. Valid values: `Available`, `Configuring`, `Provisioning`.
  /// [weight] The weight of the server.
  GetServerGroupsGroupServer({
    required this.description,
    required this.port,
    required this.serverId,
    required this.serverIp,
    required this.serverType,
    required this.status,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'port': port,
      'serverId': serverId,
      'serverIp': serverIp,
      'serverType': serverType,
      'status': status,
      'weight': weight,
    };
  }

  factory GetServerGroupsGroupServer.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsGroupServer(
      description: map['description'] as String,
      port: map['port'] as int,
      serverId: map['serverId'] as String,
      serverIp: map['serverIp'] as String,
      serverType: map['serverType'] as String,
      status: map['status'] as String,
      weight: map['weight'] as int,
    );
  }
}

