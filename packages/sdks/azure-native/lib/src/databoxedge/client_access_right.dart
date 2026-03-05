// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The mapping between a particular client IP and the type of access client has on the NFS share.
class ClientAccessRight {
  /// Type of access to be allowed for the client.
  final pulumi.Input<String> accessPermission;
  /// IP of the client.
  final pulumi.Input<String> client;

  /// Creates a new [ClientAccessRight].
  /// [accessPermission] Type of access to be allowed for the client.
  /// [client] IP of the client.
  ClientAccessRight({
    required this.accessPermission,
    required this.client,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPermission': accessPermission,
      'client': client,
    };
  }

  factory ClientAccessRight.fromMap(Map<String, dynamic> map) {
    return ClientAccessRight(
      accessPermission: pulumi.Input.fromValue(map['accessPermission'] as String),
      client: pulumi.Input.fromValue(map['client'] as String),
    );
  }
}

