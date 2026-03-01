// ignore_for_file: unused_element, unnecessary_cast


/// Remote private endpoint connection details.
class PrivateLinkServiceProxyResponseRemotePrivateEndpointConnection {
  /// Remote private endpoint connection ID.
  final String id;

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
      id: map['id'] as String,
    );
  }
}

