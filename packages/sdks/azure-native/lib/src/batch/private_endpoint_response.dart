// ignore_for_file: unused_element, unnecessary_cast


/// The private endpoint of the private endpoint connection.
class PrivateEndpointResponse {
  /// The ARM resource identifier of the private endpoint. This is of the form /subscriptions/{subscription}/resourceGroups/{group}/providers/Microsoft.Network/privateEndpoints/{privateEndpoint}.
  final String id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] The ARM resource identifier of the private endpoint. This is of the form /subscriptions/{subscription}/resourceGroups/{group}/providers/Microsoft.Network/privateEndpoints/{privateEndpoint}.
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

