// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendServerBackendServer {
  final pulumi.Input<String> serverId;
  final pulumi.Input<String>? serverIp;
  final pulumi.Input<String>? type;
  final pulumi.Input<int> weight;

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
      serverId: (map['serverId'] as String).input(),
      serverIp: map['serverIp'] == null ? null : (map['serverIp'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      weight: (map['weight'] as int).input(),
    );
  }
}

