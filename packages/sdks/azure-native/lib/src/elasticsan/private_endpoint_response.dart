// ignore_for_file: unused_element, unnecessary_cast


/// Response for PrivateEndpoint
class PrivateEndpointResponse {
  /// The ARM identifier for Private Endpoint
  final String id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] The ARM identifier for Private Endpoint
  PrivateEndpointResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory PrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointResponse(
      id: map['id'] as String,
    );
  }
}

