// ignore_for_file: unused_element, unnecessary_cast


class PrivateEndpointResponse {
  /// Specifies the id of private endpoint.
  final String? id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] Specifies the id of private endpoint.
  PrivateEndpointResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

