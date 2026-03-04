// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The mapping between a particular client IP and the type of access client has on the NFS share.
class ClientAccessRightResponse {
  /// Type of access to be allowed for the client.
  final pulumi.Input<String> accessPermission;

  /// IP of the client.
  final pulumi.Input<String> client;

  /// Creates a new [ClientAccessRightResponse].
  /// [accessPermission] Type of access to be allowed for the client.
  /// [client] IP of the client.
  ClientAccessRightResponse({
    required this.accessPermission,
    required this.client,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPermission': accessPermission,
      'client': client,
    };
  }

  factory ClientAccessRightResponse.fromMap(Map<String, dynamic> map) {
    return ClientAccessRightResponse(
      accessPermission: pulumi.Input.fromValue(
        map['accessPermission'] as String,
      ),
      client: pulumi.Input.fromValue(map['client'] as String),
    );
  }
}
