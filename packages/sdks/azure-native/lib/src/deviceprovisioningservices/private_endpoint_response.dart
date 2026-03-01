// ignore_for_file: unused_element, unnecessary_cast


/// The private endpoint property of a private endpoint connection
class PrivateEndpointResponse {
  /// The resource identifier.
  final String id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] The resource identifier.
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

