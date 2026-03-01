// ignore_for_file: unused_element, unnecessary_cast


class GetBackendServersBackendServer {
  /// backend server ID.
  final String id;
  /// Type of the backend server.
  final String serverType;
  /// Weight associated to the ECS instance.
  final int weight;

  /// Creates a new [GetBackendServersBackendServer].
  /// [id] backend server ID.
  /// [serverType] Type of the backend server.
  /// [weight] Weight associated to the ECS instance.
  GetBackendServersBackendServer({
    required this.id,
    required this.serverType,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'serverType': serverType,
      'weight': weight,
    };
  }

  factory GetBackendServersBackendServer.fromMap(Map<String, dynamic> map) {
    return GetBackendServersBackendServer(
      id: map['id'] as String,
      serverType: map['serverType'] as String,
      weight: map['weight'] as int,
    );
  }
}

