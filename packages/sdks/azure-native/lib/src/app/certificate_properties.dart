// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_key_vault_properties.dart';

/// Certificate resource specific properties
class CertificateProperties {
  /// Properties for a certificate stored in a Key Vault.
  final CertificateKeyVaultProperties? certificateKeyVaultProperties;
  /// The type of the certificate. Allowed values are `ServerSSLCertificate` and `ImagePullTrustedCA`
  final String? certificateType;
  /// Certificate password.
  final String? password;
  /// PFX or PEM blob
  final String? value;

  /// Creates a new [CertificateProperties].
  /// [certificateKeyVaultProperties] Properties for a certificate stored in a Key Vault.
  /// [certificateType] The type of the certificate. Allowed values are `ServerSSLCertificate` and `ImagePullTrustedCA`
  /// [password] Certificate password.
  /// [value] PFX or PEM blob
  CertificateProperties({
    this.certificateKeyVaultProperties,
    this.certificateType,
    this.password,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateKeyVaultProperties': ?certificateKeyVaultProperties == null ? null : certificateKeyVaultProperties!.toMap(),
      'certificateType': ?certificateType,
      'password': ?password,
      'value': ?value,
    };
  }

  factory CertificateProperties.fromMap(Map<String, dynamic> map) {
    return CertificateProperties(
      certificateKeyVaultProperties: map['certificateKeyVaultProperties'] == null ? null : CertificateKeyVaultProperties.fromMap((map['certificateKeyVaultProperties'] as Map).cast<String, dynamic>()),
      certificateType: map['certificateType'] == null ? null : map['certificateType'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

