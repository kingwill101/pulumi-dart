// ignore_for_file: unused_element, unnecessary_cast


/// Private endpoint object properties.
class MHSMPrivateEndpointResponse {
  /// Full identifier of the private endpoint resource.
  final String id;

  /// Creates a new [MHSMPrivateEndpointResponse].
  /// [id] Full identifier of the private endpoint resource.
  MHSMPrivateEndpointResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory MHSMPrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return MHSMPrivateEndpointResponse(
      id: map['id'] as String,
    );
  }
}

