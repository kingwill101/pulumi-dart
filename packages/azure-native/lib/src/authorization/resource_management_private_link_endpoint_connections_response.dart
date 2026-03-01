// ignore_for_file: unused_element, unnecessary_cast


class ResourceManagementPrivateLinkEndpointConnectionsResponse {
  /// The private endpoint connections.
  final List<String>? privateEndpointConnections;

  /// Creates a new [ResourceManagementPrivateLinkEndpointConnectionsResponse].
  /// [privateEndpointConnections] The private endpoint connections.
  ResourceManagementPrivateLinkEndpointConnectionsResponse({
    this.privateEndpointConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnections': ?privateEndpointConnections,
    };
  }

  factory ResourceManagementPrivateLinkEndpointConnectionsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceManagementPrivateLinkEndpointConnectionsResponse(
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : (map['privateEndpointConnections'] as List).cast<String>(),
    );
  }
}

