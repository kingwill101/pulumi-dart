// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_contract_properties_response.dart';

/// Result data returned by getWorkspaceCertificate.
class GetWorkspaceCertificateResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Expiration date of the certificate. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final String expirationDate;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// KeyVault location details of the certificate.
  final KeyVaultContractPropertiesResponse? keyVault;
  /// The name of the resource
  final String name;
  /// Subject attribute of the certificate.
  final String subject;
  /// Thumbprint of the certificate.
  final String thumbprint;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWorkspaceCertificateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [expirationDate] Expiration date of the certificate. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [keyVault] KeyVault location details of the certificate.
  /// [name] The name of the resource
  /// [subject] Subject attribute of the certificate.
  /// [thumbprint] Thumbprint of the certificate.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetWorkspaceCertificateResult({
    required this.azureApiVersion,
    required this.expirationDate,
    required this.id,
    this.keyVault,
    required this.name,
    required this.subject,
    required this.thumbprint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'expirationDate': expirationDate,
      'id': id,
      'keyVault': ?keyVault?.toMap(),
      'name': name,
      'subject': subject,
      'thumbprint': thumbprint,
      'type': type,
    };
  }

  factory GetWorkspaceCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceCertificateResult(
      azureApiVersion: map['azureApiVersion'] as String,
      expirationDate: map['expirationDate'] as String,
      id: map['id'] as String,
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return KeyVaultContractPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      subject: map['subject'] as String,
      thumbprint: map['thumbprint'] as String,
      type: map['type'] as String,
    );
  }
}

