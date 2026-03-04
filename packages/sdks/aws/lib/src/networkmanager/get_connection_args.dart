// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_get_connection_get_connection_args_doc}
/// Arguments for getConnection.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_get_connection_get_connection_args_doc}
class GetConnectionArgs {
  /// ID of the specific connection to retrieve.
  final pulumi.Input<String> connectionId;

  /// ID of the Global Network of the connection to retrieve.
  final pulumi.Input<String> globalNetworkId;

  /// Key-value tags for the connection.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetConnectionArgs].
  /// [connectionId] ID of the specific connection to retrieve.
  /// [globalNetworkId] ID of the Global Network of the connection to retrieve.
  /// [tags] Key-value tags for the connection.
  GetConnectionArgs({
    required this.connectionId,
    required this.globalNetworkId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'globalNetworkId': globalNetworkId,
      'tags': ?tags,
    };
  }

  factory GetConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionArgs(
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      globalNetworkId: pulumi.Input.fromValue(map['globalNetworkId'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
