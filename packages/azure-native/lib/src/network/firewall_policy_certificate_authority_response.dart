// ignore_for_file: unused_element, unnecessary_cast


/// Trusted Root certificates properties for tls.
class FirewallPolicyCertificateAuthorityResponse {
  /// Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in KeyVault.
  final String? keyVaultSecretId;
  /// Name of the CA certificate.
  final String? name;

  /// Creates a new [FirewallPolicyCertificateAuthorityResponse].
  /// [keyVaultSecretId] Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in KeyVault.
  /// [name] Name of the CA certificate.
  FirewallPolicyCertificateAuthorityResponse({
    this.keyVaultSecretId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultSecretId': ?keyVaultSecretId,
      'name': ?name,
    };
  }

  factory FirewallPolicyCertificateAuthorityResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyCertificateAuthorityResponse(
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : map['keyVaultSecretId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

