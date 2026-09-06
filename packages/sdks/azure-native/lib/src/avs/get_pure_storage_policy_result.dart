// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getPureStoragePolicy.
class GetPureStoragePolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The state of the Pure Storage Policy Based Management policy provisioning
  final String? provisioningState;
  /// Definition of a Pure Storage Policy Based Management policy
  final String? storagePolicyDefinition;
  /// Azure resource ID of the Pure Storage Pool associated with the storage policy
  final String? storagePoolId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetPureStoragePolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] The state of the Pure Storage Policy Based Management policy provisioning
  /// [storagePolicyDefinition] Definition of a Pure Storage Policy Based Management policy
  /// [storagePoolId] Azure resource ID of the Pure Storage Pool associated with the storage policy
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetPureStoragePolicyResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.provisioningState,
    this.storagePolicyDefinition,
    this.storagePoolId,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'storagePolicyDefinition': ?storagePolicyDefinition,
      'storagePoolId': ?storagePoolId,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetPureStoragePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPureStoragePolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storagePolicyDefinition: (() { final guardedValue = map['storagePolicyDefinition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storagePoolId: (() { final guardedValue = map['storagePoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
