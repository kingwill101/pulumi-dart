// ignore_for_file: unused_element, unnecessary_cast


/// An Open Container Initiative (OCI) artifact.
class ServiceOciArtifactEntry {
  /// The artifact digest.
  final String? digest;
  /// The artifact name.
  final String? imageName;
  /// The Azure Container Registry login server.
  final String? loginServer;

  /// Creates a new [ServiceOciArtifactEntry].
  /// [digest] The artifact digest.
  /// [imageName] The artifact name.
  /// [loginServer] The Azure Container Registry login server.
  ServiceOciArtifactEntry({
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

  factory ServiceOciArtifactEntry.fromMap(Map<String, dynamic> map) {
    return ServiceOciArtifactEntry(
      digest: map['digest'] == null ? null : map['digest'] as String,
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      loginServer: map['loginServer'] == null ? null : map['loginServer'] as String,
    );
  }
}

