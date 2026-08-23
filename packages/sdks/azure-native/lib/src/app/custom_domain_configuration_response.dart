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
  const CustomDomainConfigurationResponse({
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
      certificateKeyVaultProperties: (() { final guardedValue = map['certificateKeyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateKeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificatePassword: (() { final guardedValue = map['certificatePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateValue: (() { final guardedValue = map['certificateValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDomainVerificationId: pulumi.Input.fromValue(map['customDomainVerificationId'] as String),
      dnsSuffix: (() { final guardedValue = map['dnsSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationDate: pulumi.Input.fromValue(map['expirationDate'] as String),
      subjectName: pulumi.Input.fromValue(map['subjectName'] as String),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
    );
  }
}
