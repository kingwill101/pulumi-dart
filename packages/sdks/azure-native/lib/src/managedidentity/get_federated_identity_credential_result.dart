// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getFederatedIdentityCredential.
class GetFederatedIdentityCredentialResult {
  /// The list of audiences that can appear in the issued token.
  final List<String>? audiences;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The URL of the issuer to be trusted.
  final String? issuer;
  /// The name of the resource
  final String? name;
  /// The identifier of the external identity.
  final String? subject;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetFederatedIdentityCredentialResult].
  /// [audiences] The list of audiences that can appear in the issued token.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [issuer] The URL of the issuer to be trusted.
  /// [name] The name of the resource
  /// [subject] The identifier of the external identity.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetFederatedIdentityCredentialResult({
    this.audiences,
    this.azureApiVersion,
    this.id,
    this.issuer,
    this.name,
    this.subject,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': ?audiences,
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'issuer': ?issuer,
      'name': ?name,
      'subject': ?subject,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetFederatedIdentityCredentialResult.fromMap(Map<String, dynamic> map) {
    return GetFederatedIdentityCredentialResult(
      audiences: (() { final guardedValue = map['audiences']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
