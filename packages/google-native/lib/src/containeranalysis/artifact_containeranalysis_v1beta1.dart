// ignore_for_file: unused_element, unnecessary_cast

/// Artifact describes a build product.
class ArtifactContaineranalysisV1beta1 {
  /// Hash or checksum value of a binary, or Docker Registry 2.0 digest of a container.
  final String? checksum;

  /// Artifact ID, if any; for container images, this will be a URL by digest like `gcr.io/projectID/imagename@sha256:123456`.
  final String? id;

  /// Related artifact names. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. Note that a single Artifact ID can have multiple names, for example if two tags are applied to one image.
  final List<String>? names;

  /// Creates a new [ArtifactContaineranalysisV1beta1].
  /// [checksum] Hash or checksum value of a binary, or Docker Registry 2.0 digest of a container.
  /// [id] Artifact ID, if any; for container images, this will be a URL by digest like `gcr.io/projectID/imagename@sha256:123456`.
  /// [names] Related artifact names. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. Note that a single Artifact ID can have multiple names, for example if two tags are applied to one image.
  ArtifactContaineranalysisV1beta1({
    this.checksum,
    this.id,
    this.names,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final checksumValue = checksum;
    if (checksumValue != null) {
      map['checksum'] = checksumValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final namesValue = names;
    if (namesValue != null) {
      map['names'] = namesValue;
    }
    return map;
  }

  factory ArtifactContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return ArtifactContaineranalysisV1beta1(
      checksum: map['checksum'] == null ? null : map['checksum'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      names:
          map['names'] == null ? null : (map['names'] as List).cast<String>(),
    );
  }
}
