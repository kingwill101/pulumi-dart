// ignore_for_file: unused_element, unnecessary_cast


/// The private endpoint resource.
class PrivateEndpointResponse {
  /// The ARM identifier for private endpoint.
  final String id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] The ARM identifier for private endpoint.
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

