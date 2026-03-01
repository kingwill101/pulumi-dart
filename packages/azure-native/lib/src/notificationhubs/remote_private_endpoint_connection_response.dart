// ignore_for_file: unused_element, unnecessary_cast


/// Represents a Private Endpoint that is connected to Notification Hubs namespace using Private Endpoint Connection.
class RemotePrivateEndpointConnectionResponse {
  /// ARM resource ID of the Private Endpoint. This may belong to different subscription and resource group than a Notification Hubs namespace.
  final String id;

  /// Creates a new [RemotePrivateEndpointConnectionResponse].
  /// [id] ARM resource ID of the Private Endpoint. This may belong to different subscription and resource group than a Notification Hubs namespace.
  RemotePrivateEndpointConnectionResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory RemotePrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return RemotePrivateEndpointConnectionResponse(
      id: map['id'] as String,
    );
  }
}

