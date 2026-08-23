// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';

/// Customer Certificate used for https
class CustomerCertificateParametersResponse {
  /// Certificate issuing authority.
  final pulumi.Input<String> certificateAuthority;
  /// Certificate expiration date.
  final pulumi.Input<String> expirationDate;
  /// Resource reference to the Azure Key Vault certificate. Expected to be in format of /subscriptions/{​​​​​​​​​subscriptionId}​​​​​​​​​/resourceGroups/{​​​​​​​​​resourceGroupName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/providers/Microsoft.KeyVault/vaults/{vaultName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​/secrets/{certificateName}​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
  final pulumi.Input<ResourceReferenceResponse> secretSource;
  /// Version of the secret to be used
  final pulumi.Input<String>? secretVersion;
  /// Subject name in the certificate.
  final pulumi.Input<String> subject;
  /// The list of SANs.
  final pulumi.Input<List<String>> subjectAlternativeNames;
  /// Certificate thumbprint.
  final pulumi.Input<String> thumbprint;
  /// The type of the secret resource.
  /// Expected value is 'CustomerCertificate'.
  final pulumi.Input<String> type;
  /// Whether to use the latest version for the certificate
  final pulumi.Input<bool>? useLatestVersion;

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
  const CustomerCertificateParametersResponse({
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
      'secretSource': pulumi.Input.mapInputValue<ResourceReferenceResponse, Map<String, dynamic>>(secretSource, (value) => value.toMap()),
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
      certificateAuthority: pulumi.Input.fromValue(map['certificateAuthority'] as String),
      expirationDate: pulumi.Input.fromValue(map['expirationDate'] as String),
      secretSource: pulumi.Input.fromValue(ResourceReferenceResponse.fromMap((map['secretSource']! as Map).cast<String, dynamic>())),
      secretVersion: (() { final guardedValue = map['secretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subject: pulumi.Input.fromValue(map['subject'] as String),
      subjectAlternativeNames: pulumi.Input.fromValue((map['subjectAlternativeNames'] as List).cast<String>()),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      useLatestVersion: (() { final guardedValue = map['useLatestVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
