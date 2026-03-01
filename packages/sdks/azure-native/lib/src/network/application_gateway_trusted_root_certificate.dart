// ignore_for_file: unused_element, unnecessary_cast


/// Trusted Root certificates of an application gateway.
class ApplicationGatewayTrustedRootCertificate {
  /// Certificate public data.
  final String? data;
  /// Resource ID.
  final String? id;
  /// Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in KeyVault.
  final String? keyVaultSecretId;
  /// Name of the trusted root certificate that is unique within an Application Gateway.
  final String? name;

  /// Creates a new [ApplicationGatewayTrustedRootCertificate].
  /// [data] Certificate public data.
  /// [id] Resource ID.
  /// [keyVaultSecretId] Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in KeyVault.
  /// [name] Name of the trusted root certificate that is unique within an Application Gateway.
  ApplicationGatewayTrustedRootCertificate({
    this.data,
    this.id,
    this.keyVaultSecretId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'id': ?id,
      'keyVaultSecretId': ?keyVaultSecretId,
      'name': ?name,
    };
  }

  factory ApplicationGatewayTrustedRootCertificate.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayTrustedRootCertificate(
      data: map['data'] == null ? null : map['data'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : map['keyVaultSecretId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

