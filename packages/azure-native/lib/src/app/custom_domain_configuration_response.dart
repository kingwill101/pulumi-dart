// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_key_vault_properties_response.dart';

/// Configuration properties for apps environment custom domain
class CustomDomainConfigurationResponse {
  /// Certificate stored in Azure Key Vault.
  final CertificateKeyVaultPropertiesResponse? certificateKeyVaultProperties;
  /// Certificate password
  final String? certificatePassword;
  /// PFX or PEM blob
  final String? certificateValue;
  /// Id used to verify domain name ownership
  final String customDomainVerificationId;
  /// Dns suffix for the environment domain
  final String? dnsSuffix;
  /// Certificate expiration date.
  final String expirationDate;
  /// Subject name of the certificate.
  final String subjectName;
  /// Certificate thumbprint.
  final String thumbprint;

  /// Creates a new [CustomDomainConfigurationResponse].
  /// [certificateKeyVaultProperties] Certificate stored in Azure Key Vault.
  /// [certificatePassword] Certificate password
  /// [certificateValue] PFX or PEM blob
  /// [customDomainVerificationId] Id used to verify domain name ownership
  /// [dnsSuffix] Dns suffix for the environment domain
  /// [expirationDate] Certificate expiration date.
  /// [subjectName] Subject name of the certificate.
  /// [thumbprint] Certificate thumbprint.
  CustomDomainConfigurationResponse({
    this.certificateKeyVaultProperties,
    this.certificatePassword,
    this.certificateValue,
    required this.customDomainVerificationId,
    this.dnsSuffix,
    required this.expirationDate,
    required this.subjectName,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateKeyVaultProperties': ?certificateKeyVaultProperties == null ? null : certificateKeyVaultProperties!.toMap(),
      'certificatePassword': ?certificatePassword,
      'certificateValue': ?certificateValue,
      'customDomainVerificationId': customDomainVerificationId,
      'dnsSuffix': ?dnsSuffix,
      'expirationDate': expirationDate,
      'subjectName': subjectName,
      'thumbprint': thumbprint,
    };
  }

  factory CustomDomainConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CustomDomainConfigurationResponse(
      certificateKeyVaultProperties: map['certificateKeyVaultProperties'] == null ? null : CertificateKeyVaultPropertiesResponse.fromMap((map['certificateKeyVaultProperties'] as Map).cast<String, dynamic>()),
      certificatePassword: map['certificatePassword'] == null ? null : map['certificatePassword'] as String,
      certificateValue: map['certificateValue'] == null ? null : map['certificateValue'] as String,
      customDomainVerificationId: map['customDomainVerificationId'] as String,
      dnsSuffix: map['dnsSuffix'] == null ? null : map['dnsSuffix'] as String,
      expirationDate: map['expirationDate'] as String,
      subjectName: map['subjectName'] as String,
      thumbprint: map['thumbprint'] as String,
    );
  }
}

