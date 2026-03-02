// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_key_vault_properties_response.dart';

/// Configuration properties for apps environment custom domain
class CustomDomainConfigurationResponse {
  /// Certificate stored in Azure Key Vault.
  final pulumi.Input<CertificateKeyVaultPropertiesResponse>? certificateKeyVaultProperties;
  /// Certificate password
  final pulumi.Input<String>? certificatePassword;
  /// PFX or PEM blob
  final pulumi.Input<String>? certificateValue;
  /// Id used to verify domain name ownership
  final pulumi.Input<String> customDomainVerificationId;
  /// Dns suffix for the environment domain
  final pulumi.Input<String>? dnsSuffix;
  /// Certificate expiration date.
  final pulumi.Input<String> expirationDate;
  /// Subject name of the certificate.
  final pulumi.Input<String> subjectName;
  /// Certificate thumbprint.
  final pulumi.Input<String> thumbprint;

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
      'certificateKeyVaultProperties': ?pulumi.Input.mapOptionalInputValue<CertificateKeyVaultPropertiesResponse, Map<String, dynamic>>(certificateKeyVaultProperties, (value) => value.toMap()),
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
      certificateKeyVaultProperties: map['certificateKeyVaultProperties'] == null ? null : (CertificateKeyVaultPropertiesResponse.fromMap((map['certificateKeyVaultProperties'] as Map).cast<String, dynamic>())).input(),
      certificatePassword: map['certificatePassword'] == null ? null : (map['certificatePassword'] as String).input(),
      certificateValue: map['certificateValue'] == null ? null : (map['certificateValue'] as String).input(),
      customDomainVerificationId: (map['customDomainVerificationId'] as String).input(),
      dnsSuffix: map['dnsSuffix'] == null ? null : (map['dnsSuffix'] as String).input(),
      expirationDate: (map['expirationDate'] as String).input(),
      subjectName: (map['subjectName'] as String).input(),
      thumbprint: (map['thumbprint'] as String).input(),
    );
  }
}

