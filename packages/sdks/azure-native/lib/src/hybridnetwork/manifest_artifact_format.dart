// ignore_for_file: unused_element, unnecessary_cast


/// Manifest artifact properties.
class ManifestArtifactFormat {
  /// The artifact name
  final String? artifactName;
  /// The artifact type.
  final String? artifactType;
  /// The artifact version.
  final String? artifactVersion;

  /// Creates a new [ManifestArtifactFormat].
  /// [artifactName] The artifact name
  /// [artifactType] The artifact type.
  /// [artifactVersion] The artifact version.
  ManifestArtifactFormat({
    this.artifactName,
    this.artifactType,
    this.artifactVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactName': ?artifactName,
      'artifactType': ?artifactType,
      'artifactVersion': ?artifactVersion,
    };
  }

  factory ManifestArtifactFormat.fromMap(Map<String, dynamic> map) {
    return ManifestArtifactFormat(
      artifactName: map['artifactName'] == null ? null : map['artifactName'] as String,
      artifactType: map['artifactType'] == null ? null : map['artifactType'] as String,
      artifactVersion: map['artifactVersion'] == null ? null : map['artifactVersion'] as String,
    );
  }
}

