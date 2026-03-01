// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference_response.dart';

/// Customer Certificate used for https
class CustomerCertificateParametersResponse {
  /// Certificate issuing authority.
  final String certificateAuthority;
  /// Certificate expiration date.
  final String expirationDate;
  /// Resource reference to the Azure Key Vault certificate. Expected to be in format of /subscriptions/{​​​​​​​​​subscriptionId}​​​​​​​​​/resourceGroups/{​​​​​​​​​resourceGroupName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/providers/Microsoft.KeyVault/vaults/{vaultName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/secrets/{certificateName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
  final ResourceReferenceResponse secretSource;
  /// Version of the secret to be used
  final String? secretVersion;
  /// Subject name in the certificate.
  final String subject;
  /// The list of SANs.
  final List<String> subjectAlternativeNames;
  /// Certificate thumbprint.
  final String thumbprint;
  /// The type of the secret resource.
  /// Expected value is 'CustomerCertificate'.
  final String type;
  /// Whether to use the latest version for the certificate
  final bool? useLatestVersion;

  /// Creates a new [CustomerCertificateParametersResponse].
  /// [certificateAuthority] Certificate issuing authority.
  /// [expirationDate] Certificate expiration date.
  /// [secretSource] Resource reference to the Azure Key Vault certificate. Expected to be in format of /subscriptions/{​​​​​​​​​subscriptionId}​​​​​​​​​/resourceGroups/{​​​​​​​​​resourceGroupName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/providers/Microsoft.KeyVault/vaults/{vaultName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/secrets/{certificateName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
  /// [secretVersion] Version of the secret to be used
  /// [subject] Subject name in the certificate.
  /// [subjectAlternativeNames] The list of SANs.
  /// [thumbprint] Certificate thumbprint.
  /// [type] The type of the secret resource.
  /// [useLatestVersion] Whether to use the latest version for the certificate
  CustomerCertificateParametersResponse({
    required this.certificateAuthority,
    required this.expirationDate,
    required this.secretSource,
    this.secretVersion,
    required this.subject,
    required this.subjectAlternativeNames,
    required this.thumbprint,
    required this.type,
    this.useLatestVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': certificateAuthority,
      'expirationDate': expirationDate,
      'secretSource': secretSource.toMap(),
      'secretVersion': ?secretVersion,
      'subject': subject,
      'subjectAlternativeNames': subjectAlternativeNames,
      'thumbprint': thumbprint,
      'type': type,
      'useLatestVersion': ?useLatestVersion,
    };
  }

  factory CustomerCertificateParametersResponse.fromMap(Map<String, dynamic> map) {
    return CustomerCertificateParametersResponse(
      certificateAuthority: map['certificateAuthority'] as String,
      expirationDate: map['expirationDate'] as String,
      secretSource: ResourceReferenceResponse.fromMap((map['secretSource'] as Map).cast<String, dynamic>()),
      secretVersion: map['secretVersion'] == null ? null : map['secretVersion'] as String,
      subject: map['subject'] as String,
      subjectAlternativeNames: (map['subjectAlternativeNames'] as List).cast<String>(),
      thumbprint: map['thumbprint'] as String,
      type: map['type'] as String,
      useLatestVersion: map['useLatestVersion'] == null ? null : map['useLatestVersion'] as bool,
    );
  }
}

