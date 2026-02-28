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
    String? deviceId,
    required String globalNetworkId,
    Map<String, String>? tags,
  })  : deviceId = pulumi.Input.asOptionalInput<String>(deviceId),
        globalNetworkId = pulumi.Input.asInput<String>(globalNetworkId),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deviceIdValue = deviceId;
    if (deviceIdValue != null) {
      map['deviceId'] = deviceIdValue;
    }
    map['globalNetworkId'] = globalNetworkId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionsArgs(
      deviceId: map['deviceId'] == null ? null : map['deviceId'] as String,
      globalNetworkId: map['globalNetworkId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
