// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendServersBackendServer {
  /// backend server ID.
  final pulumi.Input<String> id;
  /// Type of the backend server.
  final pulumi.Input<String> serverType;
  /// Weight associated to the ECS instance.
  final pulumi.Input<int> weight;

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
      id: pulumi.Input.fromValue(map['id'] as String),
      serverType: pulumi.Input.fromValue(map['serverType'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

