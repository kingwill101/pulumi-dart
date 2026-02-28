// ignore_for_file: unused_element, unnecessary_cast


/// Artifact describes a build product.
class ArtifactResponse {
  /// Hash or checksum value of a binary, or Docker Registry 2.0 digest of a container.
  final String checksum;
  /// Related artifact names. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. Note that a single Artifact ID can have multiple names, for example if two tags are applied to one image.
  final List<String> names;

  /// Creates a new [ArtifactResponse].
  /// [checksum] Hash or checksum value of a binary, or Docker Registry 2.0 digest of a container.
  /// [names] Related artifact names. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. Note that a single Artifact ID can have multiple names, for example if two tags are applied to one image.
  ArtifactResponse({
    required this.checksum,
    required this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checksum': checksum,
      'names': names,
    };
  }

  factory ArtifactResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactResponse(
      checksum: map['checksum'] as String,
      names: (map['names'] as List).cast<String>(),
    );
  }
}

