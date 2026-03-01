// ignore_for_file: unused_element, unnecessary_cast


class BackendServerBackendServer {
  final String serverId;
  final String? serverIp;
  final String? type;
  final int weight;

  /// Creates a new [BackendServerBackendServer].
  /// [serverId] Required.
  /// [serverIp] Optional.
  /// [type] Optional.
  /// [weight] Required.
  BackendServerBackendServer({
    required this.serverId,
    this.serverIp,
    this.type,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverId': serverId,
      'serverIp': ?serverIp,
      'type': ?type,
      'weight': weight,
    };
  }

  factory BackendServerBackendServer.fromMap(Map<String, dynamic> map) {
    return BackendServerBackendServer(
      serverId: map['serverId'] as String,
      serverIp: map['serverIp'] == null ? null : map['serverIp'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      weight: map['weight'] as int,
    );
  }
}

