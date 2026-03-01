// ignore_for_file: unused_element, unnecessary_cast


/// Properties for a certificate stored in a Key Vault.
class CertificateKeyVaultProperties {
  /// Resource ID of a managed identity to authenticate with Azure Key Vault, or System to use a system-assigned identity.
  final String? identity;
  /// URL pointing to the Azure Key Vault secret that holds the certificate.
  final String? keyVaultUrl;

  /// Creates a new [CertificateKeyVaultProperties].
  /// [identity] Resource ID of a managed identity to authenticate with Azure Key Vault, or System to use a system-assigned identity.
  /// [keyVaultUrl] URL pointing to the Azure Key Vault secret that holds the certificate.
  CertificateKeyVaultProperties({
    this.identity,
    this.keyVaultUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'keyVaultUrl': ?keyVaultUrl,
    };
  }

  factory CertificateKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return CertificateKeyVaultProperties(
      identity: map['identity'] == null ? null : map['identity'] as String,
      keyVaultUrl: map['keyVaultUrl'] == null ? null : map['keyVaultUrl'] as String,
    );
  }
}

