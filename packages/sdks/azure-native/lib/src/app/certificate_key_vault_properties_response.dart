// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for a certificate stored in a Key Vault.
class CertificateKeyVaultPropertiesResponse {
  /// Resource ID of a managed identity to authenticate with Azure Key Vault, or System to use a system-assigned identity.
  final pulumi.Input<String>? identity;

  /// URL pointing to the Azure Key Vault secret that holds the certificate.
  final pulumi.Input<String>? keyVaultUrl;

  /// Creates a new [CertificateKeyVaultPropertiesResponse].
  /// [identity] Resource ID of a managed identity to authenticate with Azure Key Vault, or System to use a system-assigned identity.
  /// [keyVaultUrl] URL pointing to the Azure Key Vault secret that holds the certificate.
  CertificateKeyVaultPropertiesResponse({this.identity, this.keyVaultUrl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'keyVaultUrl': ?keyVaultUrl,
    };
  }

  factory CertificateKeyVaultPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CertificateKeyVaultPropertiesResponse(
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultUrl: (() {
        final guardedValue = map['keyVaultUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
