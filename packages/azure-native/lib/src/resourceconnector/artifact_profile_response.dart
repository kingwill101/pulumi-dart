// ignore_for_file: unused_element, unnecessary_cast


/// Appliance ArtifactProfile definition.
class ArtifactProfileResponse {
  /// Endpoint is the URL to upload artifacts to.
  final String endpoint;

  /// Creates a new [ArtifactProfileResponse].
  /// [endpoint] Endpoint is the URL to upload artifacts to.
  ArtifactProfileResponse({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory ArtifactProfileResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactProfileResponse(
      endpoint: map['endpoint'] as String,
    );
  }
}

