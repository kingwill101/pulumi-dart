// ignore_for_file: unused_element, unnecessary_cast


/// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on.
class GrafeasV1SlsaProvenanceZeroTwoSlsaMaterialResponse {
  final Map<String, String> digest;
  final String uri;

  /// Creates a new [GrafeasV1SlsaProvenanceZeroTwoSlsaMaterialResponse].
  /// [digest] Required.
  /// [uri] Required.
  GrafeasV1SlsaProvenanceZeroTwoSlsaMaterialResponse({
    required this.digest,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': digest,
      'uri': uri,
    };
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaMaterialResponse.fromMap(Map<String, dynamic> map) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaMaterialResponse(
      digest: (map['digest'] as Map).cast<String, String>(),
      uri: map['uri'] as String,
    );
  }
}

