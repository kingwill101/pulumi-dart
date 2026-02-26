// ignore_for_file: unused_element, unnecessary_cast

/// Artifact describes a build product.
class ArtifactResponse2 {
  /// Hash or checksum value of a binary, or Docker Registry 2.0 digest of a container.
  final String checksum;

  /// Name of the artifact. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. This field is deprecated in favor of the plural `names` field; it continues to exist here to allow existing BuildProvenance serialized to json in google.devtools.containeranalysis.v1alpha1.BuildDetails.provenance_bytes to deserialize back into proto.
  final String name;

  /// Related artifact names. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. Note that a single Artifact ID can have multiple names, for example if two tags are applied to one image.
  final List<String> names;

  ArtifactResponse2({
    required this.checksum,
    required this.name,
    required this.names,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['checksum'] = checksum;
    map['name'] = name;
    map['names'] = names;
    return map;
  }

  factory ArtifactResponse2.fromMap(Map<String, dynamic> map) {
    return ArtifactResponse2(
      checksum: map['checksum'] as String,
      name: map['name'] as String,
      names: (map['names'] as List).cast<String>(),
    );
  }
}
