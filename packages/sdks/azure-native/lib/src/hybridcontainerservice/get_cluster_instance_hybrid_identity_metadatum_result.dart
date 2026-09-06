// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getClusterInstanceHybridIdentityMetadatum.
class GetClusterInstanceHybridIdentityMetadatumResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Provisioning state of the resource
  final String? provisioningState;
  /// Onboarding public key for provisioning the Managed identity for the connected cluster.
  final String? publicKey;
  /// Unique id of the parent provisioned cluster resource.
  final String? resourceUid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetClusterInstanceHybridIdentityMetadatumResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the resource
  /// [publicKey] Onboarding public key for provisioning the Managed identity for the connected cluster.
  /// [resourceUid] Unique id of the parent provisioned cluster resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetClusterInstanceHybridIdentityMetadatumResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.provisioningState,
    this.publicKey,
    this.resourceUid,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'publicKey': ?publicKey,
      'resourceUid': ?resourceUid,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetClusterInstanceHybridIdentityMetadatumResult.fromMap(Map<String, dynamic> map) {
    return GetClusterInstanceHybridIdentityMetadatumResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceUid: (() { final guardedValue = map['resourceUid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
