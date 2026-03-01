// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_get_connections_get_connections_args_doc}
/// Arguments for getConnections.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_get_connections_get_connections_args_doc}
class GetConnectionsArgs {
  /// ID of the device of the connections to retrieve.
  final pulumi.Input<String>? deviceId;
  /// ID of the Global Network of the connections to retrieve.
  final pulumi.Input<String> globalNetworkId;
  /// Restricts the list to the connections with these tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetConnectionsArgs].
  /// [deviceId] ID of the device of the connections to retrieve.
  /// [globalNetworkId] ID of the Global Network of the connections to retrieve.
  /// [tags] Restricts the list to the connections with these tags.
  GetConnectionsArgs({
    pulumi.Output<String>? deviceId,
    required pulumi.Output<String> globalNetworkId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      deviceId = pulumi.Input.asOptionalInput<String>(deviceId),
      globalNetworkId = pulumi.Input.asInput<String>(globalNetworkId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceId': ?deviceId,
      'globalNetworkId': globalNetworkId,
      'tags': ?tags,
    };
  }

  factory GetConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionsArgs(
      deviceId: map['deviceId'] == null ? null : pulumi.Output.create<String>(map['deviceId'] as String),
      globalNetworkId: pulumi.Output.create<String>(map['globalNetworkId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

