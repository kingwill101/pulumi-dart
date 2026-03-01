// ignore_for_file: unused_element, unnecessary_cast

/// Artifact describes a build product.
class ArtifactResponseContaineranalysisV1alpha1 {
  /// Hash or checksum value of a binary, or Docker Registry 2.0 digest of a container.
  final String checksum;

  /// Name of the artifact. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. This field is deprecated in favor of the plural `names` field; it continues to exist here to allow existing BuildProvenance serialized to json in google.devtools.containeranalysis.v1alpha1.BuildDetails.provenance_bytes to deserialize back into proto.
  final String name;

  /// Related artifact names. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. Note that a single Artifact ID can have multiple names, for example if two tags are applied to one image.
  final List<String> names;

  /// Creates a new [ArtifactResponseContaineranalysisV1alpha1].
  /// [checksum] Hash or checksum value of a binary, or Docker Registry 2.0 digest of a container.
  /// [name] Name of the artifact. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. This field is deprecated in favor of the plural `names` field; it continues to exist here to allow existing BuildProvenance serialized to json in google.devtools.containeranalysis.v1alpha1.BuildDetails.provenance_bytes to deserialize back into proto.
  /// [names] Related artifact names. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. Note that a single Artifact ID can have multiple names, for example if two tags are applied to one image.
  ArtifactResponseContaineranalysisV1alpha1({
    required this.checksum,
    required this.name,
    required this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checksum': checksum,
      'name': name,
      'names': names,
    };
  }

  factory ArtifactResponseContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ArtifactResponseContaineranalysisV1alpha1(
      checksum: map['checksum'] as String,
      name: map['name'] as String,
      names: (map['names'] as List).cast<String>(),
    );
  }
}
