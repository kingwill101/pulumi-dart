// ignore_for_file: unused_element, unnecessary_cast

/// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial {
  /// Collection of cryptographic digests for the contents of this artifact.
  final Map<String, String>? digest;

  /// The method by which this artifact was referenced during the build.
  final String? uri;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial].
  /// [digest] Collection of cryptographic digests for the contents of this artifact.
  /// [uri] The method by which this artifact was referenced during the build.
  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial({
    this.digest,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'digest': ?digest, 'uri': ?uri};
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial(
      digest: map['digest'] == null
          ? null
          : (map['digest'] as Map).cast<String, String>(),
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
