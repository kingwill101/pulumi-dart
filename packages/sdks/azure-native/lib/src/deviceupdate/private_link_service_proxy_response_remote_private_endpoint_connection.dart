// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Remote private endpoint connection details.
class PrivateLinkServiceProxyResponseRemotePrivateEndpointConnection {
  /// Remote private endpoint connection ID.
  final pulumi.Input<String> id;

  /// Creates a new [PrivateLinkServiceProxyResponseRemotePrivateEndpointConnection].
  /// [id] Remote private endpoint connection ID.
  PrivateLinkServiceProxyResponseRemotePrivateEndpointConnection({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory PrivateLinkServiceProxyResponseRemotePrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceProxyResponseRemotePrivateEndpointConnection(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

