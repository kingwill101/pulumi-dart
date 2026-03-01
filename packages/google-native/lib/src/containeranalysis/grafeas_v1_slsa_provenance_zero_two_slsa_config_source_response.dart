// ignore_for_file: unused_element, unnecessary_cast

/// Describes where the config file that kicked off the build came from. This is effectively a pointer to the source where buildConfig came from.
class GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSourceResponse {
  final Map<String, String> digest;
  final String entryPoint;
  final String uri;

  /// Creates a new [GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSourceResponse].
  /// [digest] Required.
  /// [entryPoint] Required.
  /// [uri] Required.
  GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSourceResponse({
    required this.digest,
    required this.entryPoint,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': digest,
      'entryPoint': entryPoint,
      'uri': uri,
    };
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSourceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSourceResponse(
      digest: (map['digest'] as Map).cast<String, String>(),
      entryPoint: map['entryPoint'] as String,
      uri: map['uri'] as String,
    );
  }
}
