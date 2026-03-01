// ignore_for_file: unused_element, unnecessary_cast


/// A private endpoint class.
class PrivateEndpointResponse {
  /// The private endpoint identifier.
  final String? id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] The private endpoint identifier.
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

