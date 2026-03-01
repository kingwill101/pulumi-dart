// ignore_for_file: unused_element, unnecessary_cast


/// Private endpoint which the connection belongs to.
class PrivateEndpointPropertyResponse {
  /// Resource id of the private endpoint.
  final String id;

  /// Creates a new [PrivateEndpointPropertyResponse].
  /// [id] Resource id of the private endpoint.
  PrivateEndpointPropertyResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory PrivateEndpointPropertyResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointPropertyResponse(
      id: map['id'] as String,
    );
  }
}

