// ignore_for_file: unused_element, unnecessary_cast


/// Represent the secrets intended for encryption with asymmetric key pair.
class AsymmetricEncryptedSecret {
  /// The algorithm used to encrypt "Value".
  final String encryptionAlgorithm;
  /// Thumbprint certificate used to encrypt \"Value\". If the value is unencrypted, it will be null.
  final String? encryptionCertThumbprint;
  /// The value of the secret.
  final String value;

  /// Creates a new [AsymmetricEncryptedSecret].
  /// [encryptionAlgorithm] The algorithm used to encrypt "Value".
  /// [encryptionCertThumbprint] Thumbprint certificate used to encrypt \"Value\". If the value is unencrypted, it will be null.
  /// [value] The value of the secret.
  AsymmetricEncryptedSecret({
    required this.encryptionAlgorithm,
    this.encryptionCertThumbprint,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAlgorithm': encryptionAlgorithm,
      'encryptionCertThumbprint': ?encryptionCertThumbprint,
      'value': value,
    };
  }

  factory AsymmetricEncryptedSecret.fromMap(Map<String, dynamic> map) {
    return AsymmetricEncryptedSecret(
      encryptionAlgorithm: map['encryptionAlgorithm'] as String,
      encryptionCertThumbprint: map['encryptionCertThumbprint'] == null ? null : map['encryptionCertThumbprint'] as String,
      value: map['value'] as String,
    );
  }
}

