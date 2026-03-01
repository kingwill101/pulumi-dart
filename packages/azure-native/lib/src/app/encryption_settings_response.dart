// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the secrets references of encryption key and signing key for ContainerApp Service Authentication/Authorization.
class EncryptionSettingsResponse {
  /// The secret name which is referenced for EncryptionKey.
  final String? containerAppAuthEncryptionSecretName;
  /// The secret name which is referenced for SigningKey.
  final String? containerAppAuthSigningSecretName;

  /// Creates a new [EncryptionSettingsResponse].
  /// [containerAppAuthEncryptionSecretName] The secret name which is referenced for EncryptionKey.
  /// [containerAppAuthSigningSecretName] The secret name which is referenced for SigningKey.
  EncryptionSettingsResponse({
    this.containerAppAuthEncryptionSecretName,
    this.containerAppAuthSigningSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppAuthEncryptionSecretName': ?containerAppAuthEncryptionSecretName,
      'containerAppAuthSigningSecretName': ?containerAppAuthSigningSecretName,
    };
  }

  factory EncryptionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionSettingsResponse(
      containerAppAuthEncryptionSecretName: map['containerAppAuthEncryptionSecretName'] == null ? null : map['containerAppAuthEncryptionSecretName'] as String,
      containerAppAuthSigningSecretName: map['containerAppAuthSigningSecretName'] == null ? null : map['containerAppAuthSigningSecretName'] as String,
    );
  }
}

