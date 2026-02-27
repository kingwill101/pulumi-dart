// ignore_for_file: unused_element, unnecessary_cast

/// Artifact describes a build product.
class ArtifactResponseContaineranalysisV1beta1 {
  /// Hash or checksum value of a binary, or Docker Registry 2.0 digest of a container.
  final String checksum;

  /// Related artifact names. This may be the path to a binary or jar file, or in the case of a container build, the name used to push the container image to Google Container Registry, as presented to `docker push`. Note that a single Artifact ID can have multiple names, for example if two tags are applied to one image.
  final List<String> names;

  ArtifactResponseContaineranalysisV1beta1({
    required this.checksum,
    required this.names,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['checksum'] = checksum;
    map['names'] = names;
    return map;
  }

  factory ArtifactResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ArtifactResponseContaineranalysisV1beta1(
      checksum: map['checksum'] as String,
      names: (map['names'] as List).cast<String>(),
    );
  }
}
