// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getPureStoragePolicy.
class GetPureStoragePolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The name of the resource
  final String name;

  /// The state of the Pure Storage Policy Based Management policy provisioning
  final String provisioningState;

  /// Definition of a Pure Storage Policy Based Management policy
  final String storagePolicyDefinition;

  /// Azure resource ID of the Pure Storage Pool associated with the storage policy
  final String storagePoolId;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPureStoragePolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] The state of the Pure Storage Policy Based Management policy provisioning
  /// [storagePolicyDefinition] Definition of a Pure Storage Policy Based Management policy
  /// [storagePoolId] Azure resource ID of the Pure Storage Pool associated with the storage policy
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetPureStoragePolicyResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.storagePolicyDefinition,
    required this.storagePoolId,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'storagePolicyDefinition': storagePolicyDefinition,
      'storagePoolId': storagePoolId,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetPureStoragePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPureStoragePolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      storagePolicyDefinition: map['storagePolicyDefinition'] as String,
      storagePoolId: map['storagePoolId'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
