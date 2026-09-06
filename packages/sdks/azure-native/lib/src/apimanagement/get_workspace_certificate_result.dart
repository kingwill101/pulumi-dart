// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_contract_properties_response.dart';

/// Result data returned by getWorkspaceCertificate.
class GetWorkspaceCertificateResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Expiration date of the certificate. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final String? expirationDate;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// KeyVault location details of the certificate.
  final KeyVaultContractPropertiesResponse? keyVault;
  /// The name of the resource
  final String? name;
  /// Subject attribute of the certificate.
  final String? subject;
  /// Thumbprint of the certificate.
  final String? thumbprint;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWorkspaceCertificateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [expirationDate] Expiration date of the certificate. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [keyVault] KeyVault location details of the certificate.
  /// [name] The name of the resource
  /// [subject] Subject attribute of the certificate.
  /// [thumbprint] Thumbprint of the certificate.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWorkspaceCertificateResult({
    this.azureApiVersion,
    this.expirationDate,
    this.id,
    this.keyVault,
    this.name,
    this.subject,
    this.thumbprint,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'expirationDate': ?expirationDate,
      'id': ?id,
      'keyVault': ?keyVault?.toMap(),
      'name': ?name,
      'subject': ?subject,
      'thumbprint': ?thumbprint,
      'type': ?type,
    };
  }

  factory GetWorkspaceCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceCertificateResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return KeyVaultContractPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return guardedValue as String; })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
