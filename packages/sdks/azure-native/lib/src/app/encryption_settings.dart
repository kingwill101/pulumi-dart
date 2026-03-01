// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the secrets references of encryption key and signing key for ContainerApp Service Authentication/Authorization.
class EncryptionSettings {
  /// The secret name which is referenced for EncryptionKey.
  final String? containerAppAuthEncryptionSecretName;
  /// The secret name which is referenced for SigningKey.
  final String? containerAppAuthSigningSecretName;

  /// Creates a new [EncryptionSettings].
  /// [containerAppAuthEncryptionSecretName] The secret name which is referenced for EncryptionKey.
  /// [containerAppAuthSigningSecretName] The secret name which is referenced for SigningKey.
  EncryptionSettings({
    this.containerAppAuthEncryptionSecretName,
    this.containerAppAuthSigningSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppAuthEncryptionSecretName': ?containerAppAuthEncryptionSecretName,
      'containerAppAuthSigningSecretName': ?containerAppAuthSigningSecretName,
    };
  }

  factory EncryptionSettings.fromMap(Map<String, dynamic> map) {
    return EncryptionSettings(
      containerAppAuthEncryptionSecretName: map['containerAppAuthEncryptionSecretName'] == null ? null : map['containerAppAuthEncryptionSecretName'] as String,
      containerAppAuthSigningSecretName: map['containerAppAuthSigningSecretName'] == null ? null : map['containerAppAuthSigningSecretName'] as String,
    );
  }
}

