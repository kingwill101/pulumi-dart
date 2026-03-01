// ignore_for_file: unused_element, unnecessary_cast


/// Defines the Resource ID for a Frontend Endpoint.
class FrontendEndpointLinkResponse {
  /// Resource ID.
  final String? id;

  /// Creates a new [FrontendEndpointLinkResponse].
  /// [id] Resource ID.
  FrontendEndpointLinkResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory FrontendEndpointLinkResponse.fromMap(Map<String, dynamic> map) {
    return FrontendEndpointLinkResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

