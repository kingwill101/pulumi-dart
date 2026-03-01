// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_key_vault_properties.dart';

/// Configuration properties for apps environment custom domain
class CustomDomainConfiguration {
  /// Certificate stored in Azure Key Vault.
  final CertificateKeyVaultProperties? certificateKeyVaultProperties;
  /// Certificate password
  final String? certificatePassword;
  /// PFX or PEM blob
  final String? certificateValue;
  /// Dns suffix for the environment domain
  final String? dnsSuffix;

  /// Creates a new [CustomDomainConfiguration].
  /// [certificateKeyVaultProperties] Certificate stored in Azure Key Vault.
  /// [certificatePassword] Certificate password
  /// [certificateValue] PFX or PEM blob
  /// [dnsSuffix] Dns suffix for the environment domain
  CustomDomainConfiguration({
    this.certificateKeyVaultProperties,
    this.certificatePassword,
    this.certificateValue,
    this.dnsSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateKeyVaultProperties': ?certificateKeyVaultProperties == null ? null : certificateKeyVaultProperties!.toMap(),
      'certificatePassword': ?certificatePassword,
      'certificateValue': ?certificateValue,
      'dnsSuffix': ?dnsSuffix,
    };
  }

  factory CustomDomainConfiguration.fromMap(Map<String, dynamic> map) {
    return CustomDomainConfiguration(
      certificateKeyVaultProperties: map['certificateKeyVaultProperties'] == null ? null : CertificateKeyVaultProperties.fromMap((map['certificateKeyVaultProperties'] as Map).cast<String, dynamic>()),
      certificatePassword: map['certificatePassword'] == null ? null : map['certificatePassword'] as String,
      certificateValue: map['certificateValue'] == null ? null : map['certificateValue'] as String,
      dnsSuffix: map['dnsSuffix'] == null ? null : map['dnsSuffix'] as String,
    );
  }
}

