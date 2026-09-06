// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listArtifactManifestCredential.
class ListArtifactManifestCredentialResult {
  /// The credential type.
  final String? credentialType;

  /// Creates a new [ListArtifactManifestCredentialResult].
  /// [credentialType] The credential type.
  const ListArtifactManifestCredentialResult({
    this.credentialType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialType': ?credentialType,
    };
  }

  factory ListArtifactManifestCredentialResult.fromMap(Map<String, dynamic> map) {
    return ListArtifactManifestCredentialResult(
      credentialType: (() { final guardedValue = map['credentialType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
