// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listArtifactManifestCredential.
class ListArtifactManifestCredentialResult {
  /// The credential type.
  final String credentialType;

  /// Creates a new [ListArtifactManifestCredentialResult].
  /// [credentialType] The credential type.
  ListArtifactManifestCredentialResult({
    required this.credentialType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialType': credentialType,
    };
  }

  factory ListArtifactManifestCredentialResult.fromMap(Map<String, dynamic> map) {
    return ListArtifactManifestCredentialResult(
      credentialType: map['credentialType'] as String,
    );
  }
}

