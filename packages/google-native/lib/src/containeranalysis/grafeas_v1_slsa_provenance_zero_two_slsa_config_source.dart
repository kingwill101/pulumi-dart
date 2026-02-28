// ignore_for_file: unused_element, unnecessary_cast

/// Describes where the config file that kicked off the build came from. This is effectively a pointer to the source where buildConfig came from.
class GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource {
  final Map<String, String>? digest;
  final String? entryPoint;
  final String? uri;

  /// Creates a new [GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource].
  /// [digest] Optional.
  /// [entryPoint] Optional.
  /// [uri] Optional.
  GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource({
    this.digest,
    this.entryPoint,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final digestValue = digest;
    if (digestValue != null) {
      map['digest'] = digestValue;
    }
    final entryPointValue = entryPoint;
    if (entryPointValue != null) {
      map['entryPoint'] = entryPointValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource.fromMap(
      Map<String, dynamic> map) {
    return GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource(
      digest: map['digest'] == null
          ? null
          : (map['digest'] as Map).cast<String, String>(),
      entryPoint:
          map['entryPoint'] == null ? null : map['entryPoint'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
