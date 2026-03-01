// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference_response.dart';

/// Azure FirstParty Managed Certificate provided by other first party resource providers to enable HTTPS.
class AzureFirstPartyManagedCertificateParametersResponse {
  /// Certificate issuing authority.
  final String certificateAuthority;
  /// Certificate expiration date.
  final String expirationDate;
  /// Resource reference to the Azure Key Vault certificate. Expected to be in format of /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/secrets/{certificateName}
  final ResourceReferenceResponse secretSource;
  /// Subject name in the certificate.
  final String subject;
  /// The list of SANs.
  final List<String>? subjectAlternativeNames;
  /// Certificate thumbprint.
  final String thumbprint;
  /// The type of the secret resource.
  /// Expected value is 'AzureFirstPartyManagedCertificate'.
  final String type;

  /// Creates a new [AzureFirstPartyManagedCertificateParametersResponse].
  /// [certificateAuthority] Certificate issuing authority.
  /// [expirationDate] Certificate expiration date.
  /// [secretSource] Resource reference to the Azure Key Vault certificate. Expected to be in format of /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/secrets/{certificateName}
  /// [subject] Subject name in the certificate.
  /// [subjectAlternativeNames] The list of SANs.
  /// [thumbprint] Certificate thumbprint.
  /// [type] The type of the secret resource.
  AzureFirstPartyManagedCertificateParametersResponse({
    required this.certificateAuthority,
    required this.expirationDate,
    required this.secretSource,
    required this.subject,
    this.subjectAlternativeNames,
    required this.thumbprint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': certificateAuthority,
      'expirationDate': expirationDate,
      'secretSource': secretSource.toMap(),
      'subject': subject,
      'subjectAlternativeNames': ?subjectAlternativeNames,
      'thumbprint': thumbprint,
      'type': type,
    };
  }

  factory AzureFirstPartyManagedCertificateParametersResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirstPartyManagedCertificateParametersResponse(
      certificateAuthority: map['certificateAuthority'] as String,
      expirationDate: map['expirationDate'] as String,
      secretSource: ResourceReferenceResponse.fromMap((map['secretSource'] as Map).cast<String, dynamic>()),
      subject: map['subject'] as String,
      subjectAlternativeNames: map['subjectAlternativeNames'] == null ? null : (map['subjectAlternativeNames'] as List).cast<String>(),
      thumbprint: map['thumbprint'] as String,
      type: map['type'] as String,
    );
  }
}

