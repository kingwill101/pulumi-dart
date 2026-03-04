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
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      serverIp: (() {
        final guardedValue = map['serverIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
