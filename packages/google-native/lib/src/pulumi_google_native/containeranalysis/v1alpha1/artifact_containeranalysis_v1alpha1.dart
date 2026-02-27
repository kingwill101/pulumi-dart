// ignore_for_file: unused_element, unnecessary_cast

/// Artifact describes a build product.
class ArtifactContaineranalysisV1alpha1 {
  /// Hash or checksum value of a binary, or Docker Registry 2.0 digest of a container.
  final String? checksum;

  /// Artifact ID, if any; for container images, this will be a URL by digest like gcr.io/projectID/imagename@sha256:123456
  final String? id;

  /// Name of the artifact. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. This field is deprecated in favor of the plural `names` field; it continues to exist here to allow existing BuildProvenance serialized to json in google.devtools.containeranalysis.v1alpha1.BuildDetails.provenance_bytes to deserialize back into proto.
  final String? name;

  /// Related artifact names. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. Note that a single Artifact ID can have multiple names, for example if two tags are applied to one image.
  final List<String>? names;

  ArtifactContaineranalysisV1alpha1({
    this.checksum,
    this.id,
    this.name,
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
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namesValue = names;
    if (namesValue != null) {
      map['names'] = namesValue;
    }
    return map;
  }

  factory ArtifactContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return ArtifactContaineranalysisV1alpha1(
      checksum: map['checksum'] == null ? null : map['checksum'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      names:
          map['names'] == null ? null : (map['names'] as List).cast<String>(),
    );
  }
}
