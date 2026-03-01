// ignore_for_file: unused_element, unnecessary_cast


/// Represent remote private endpoint connection.
class RemotePrivateEndpointConnectionResponse {
  /// Gets or sets the remote private endpoint connection id.
  final String? id;

  /// Creates a new [RemotePrivateEndpointConnectionResponse].
  /// [id] Gets or sets the remote private endpoint connection id.
  RemotePrivateEndpointConnectionResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory RemotePrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return RemotePrivateEndpointConnectionResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

