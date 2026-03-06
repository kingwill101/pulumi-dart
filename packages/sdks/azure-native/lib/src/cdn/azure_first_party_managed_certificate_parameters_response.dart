// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';

/// Azure FirstParty Managed Certificate provided by other first party resource providers to enable HTTPS.
class AzureFirstPartyManagedCertificateParametersResponse {
  /// Certificate issuing authority.
  final pulumi.Input<String> certificateAuthority;
  /// Certificate expiration date.
  final pulumi.Input<String> expirationDate;
  /// Resource reference to the Azure Key Vault certificate. Expected to be in format of /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/secrets/{certificateName}
  final pulumi.Input<ResourceReferenceResponse> secretSource;
  /// Subject name in the certificate.
  final pulumi.Input<String> subject;
  /// The list of SANs.
  final pulumi.Input<List<String>>? subjectAlternativeNames;
  /// Certificate thumbprint.
  final pulumi.Input<String> thumbprint;
  /// The type of the secret resource.
  /// Expected value is 'AzureFirstPartyManagedCertificate'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureFirstPartyManagedCertificateParametersResponse].
  /// [certificateAuthority] Certificate issuing authority.
  /// [expirationDate] Certificate expiration date.
  /// [secretSource] Resource reference to the Azure Key Vault certificate. Expected to be in format of /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}/secrets/{certificateName}
  /// [subject] Subject name in the certificate.
  /// [subjectAlternativeNames] The list of SANs.
  /// [thumbprint] Certificate thumbprint.
  /// [type] The type of the secret resource.
  const AzureFirstPartyManagedCertificateParametersResponse({
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
      'secretSource': pulumi.Input.mapInputValue<ResourceReferenceResponse, Map<String, dynamic>>(secretSource, (value) => value.toMap()),
      'subject': subject,
      'subjectAlternativeNames': ?subjectAlternativeNames,
      'thumbprint': thumbprint,
      'type': type,
    };
  }

  factory AzureFirstPartyManagedCertificateParametersResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirstPartyManagedCertificateParametersResponse(
      certificateAuthority: pulumi.Input.fromValue(map['certificateAuthority'] as String),
      expirationDate: pulumi.Input.fromValue(map['expirationDate'] as String),
      secretSource: pulumi.Input.fromValue(ResourceReferenceResponse.fromMap((map['secretSource']! as Map).cast<String, dynamic>())),
      subject: pulumi.Input.fromValue(map['subject'] as String),
      subjectAlternativeNames: (() { final guardedValue = map['subjectAlternativeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

