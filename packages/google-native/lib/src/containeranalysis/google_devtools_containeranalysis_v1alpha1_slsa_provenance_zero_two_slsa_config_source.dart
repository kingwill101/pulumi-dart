// ignore_for_file: unused_element, unnecessary_cast


/// Describes where the config file that kicked off the build came from. This is effectively a pointer to the source where buildConfig came from.
class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource {
  /// Collection of cryptographic digests for the contents of the artifact specified by invocation.configSource.uri.
  final Map<String, String>? digest;
  /// String identifying the entry point into the build.
  final String? entryPoint;
  /// URI indicating the identity of the source of the config.
  final String? uri;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource].
  /// [digest] Collection of cryptographic digests for the contents of the artifact specified by invocation.configSource.uri.
  /// [entryPoint] String identifying the entry point into the build.
  /// [uri] URI indicating the identity of the source of the config.
  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource({
    this.digest,
    this.entryPoint,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'entryPoint': ?entryPoint,
      'uri': ?uri,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource(
      digest: map['digest'] == null ? null : (map['digest'] as Map).cast<String, String>(),
      entryPoint: map['entryPoint'] == null ? null : map['entryPoint'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

