// ignore_for_file: unused_element, unnecessary_cast


class PrivateEndpointProperty {
  /// Resource id of the private endpoint.
  final String? id;

  /// Creates a new [PrivateEndpointProperty].
  /// [id] Resource id of the private endpoint.
  PrivateEndpointProperty({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpointProperty.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointProperty(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

