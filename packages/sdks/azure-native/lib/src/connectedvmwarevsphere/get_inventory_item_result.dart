// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getInventoryItem.
class GetInventoryItemResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// They inventory type.
  final String? inventoryType;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// Gets or sets the tracked resource id corresponding to the inventory resource.
  final String? managedResourceId;
  /// Gets or sets the vCenter Managed Object name for the inventory item.
  final String? moName;
  /// Gets or sets the MoRef (Managed Object Reference) ID for the inventory item.
  final String? moRefId;
  /// The name of the resource
  final String? name;
  /// Gets the provisioning state.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetInventoryItemResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [inventoryType] They inventory type.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [managedResourceId] Gets or sets the tracked resource id corresponding to the inventory resource.
  /// [moName] Gets or sets the vCenter Managed Object name for the inventory item.
  /// [moRefId] Gets or sets the MoRef (Managed Object Reference) ID for the inventory item.
  /// [name] The name of the resource
  /// [provisioningState] Gets the provisioning state.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetInventoryItemResult({
    this.azureApiVersion,
    this.id,
    this.inventoryType,
    this.kind,
    this.managedResourceId,
    this.moName,
    this.moRefId,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'inventoryType': ?inventoryType,
      'kind': ?kind,
      'managedResourceId': ?managedResourceId,
      'moName': ?moName,
      'moRefId': ?moRefId,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetInventoryItemResult.fromMap(Map<String, dynamic> map) {
    return GetInventoryItemResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inventoryType: (() { final guardedValue = map['inventoryType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedResourceId: (() { final guardedValue = map['managedResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      moName: (() { final guardedValue = map['moName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      moRefId: (() { final guardedValue = map['moRefId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
