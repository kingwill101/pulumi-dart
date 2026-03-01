// ignore_for_file: unused_element, unnecessary_cast


/// An Open Container Initiative (OCI) artifact.
class ServiceOciArtifactEntryResponse {
  /// The artifact digest.
  final String? digest;
  /// The artifact name.
  final String? imageName;
  /// The Azure Container Registry login server.
  final String? loginServer;

  /// Creates a new [ServiceOciArtifactEntryResponse].
  /// [digest] The artifact digest.
  /// [imageName] The artifact name.
  /// [loginServer] The Azure Container Registry login server.
  ServiceOciArtifactEntryResponse({
    this.digest,
    this.imageName,
    this.loginServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'imageName': ?imageName,
      'loginServer': ?loginServer,
    };
  }

  factory ServiceOciArtifactEntryResponse.fromMap(Map<String, dynamic> map) {
    return ServiceOciArtifactEntryResponse(
      digest: map['digest'] == null ? null : map['digest'] as String,
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      loginServer: map['loginServer'] == null ? null : map['loginServer'] as String,
    );
  }
}

