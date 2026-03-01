// ignore_for_file: unused_element, unnecessary_cast


class ServerGroupServer {
  /// The port used by the backend server. Valid values: `1` to `65535`.
  final int port;
  /// The list of Elastic Compute Service (ECS) Ids or Elastic Network Interface (ENI) Ids.
  final List<String> serverIds;
  /// Specify the type of the backend server. Default value: `ecs`. Valid values: `ecs`, `eni`.
  final String? type;
  /// Weight of the backend server. Default value: `100`. Valid values: `0` to `100`.
  final int? weight;

  /// Creates a new [ServerGroupServer].
  /// [port] The port used by the backend server. Valid values: `1` to `65535`.
  /// [serverIds] The list of Elastic Compute Service (ECS) Ids or Elastic Network Interface (ENI) Ids.
  /// [type] Specify the type of the backend server. Default value: `ecs`. Valid values: `ecs`, `eni`.
  /// [weight] Weight of the backend server. Default value: `100`. Valid values: `0` to `100`.
  ServerGroupServer({
    required this.port,
    required this.serverIds,
    this.type,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'serverIds': serverIds,
      'type': ?type,
      'weight': ?weight,
    };
  }

  factory ServerGroupServer.fromMap(Map<String, dynamic> map) {
    return ServerGroupServer(
      port: map['port'] as int,
      serverIds: (map['serverIds'] as List).cast<String>(),
      type: map['type'] == null ? null : map['type'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

