// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getPrivateLinkScopedResource.
class GetPrivateLinkScopedResourceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The kind of scoped Azure monitor resource.
  final String? kind;
  /// The resource id of the scoped Azure monitor resource.
  final String? linkedResourceId;
  /// The name of the resource
  final String? name;
  /// State of the Azure monitor resource.
  final String? provisioningState;
  /// The location of a scoped subscription. Only needs to be specified for metric dataplane subscriptions.
  final String? subscriptionLocation;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetPrivateLinkScopedResourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] The kind of scoped Azure monitor resource.
  /// [linkedResourceId] The resource id of the scoped Azure monitor resource.
  /// [name] The name of the resource
  /// [provisioningState] State of the Azure monitor resource.
  /// [subscriptionLocation] The location of a scoped subscription. Only needs to be specified for metric dataplane subscriptions.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetPrivateLinkScopedResourceResult({
    this.azureApiVersion,
    this.id,
    this.kind,
    this.linkedResourceId,
    this.name,
    this.provisioningState,
    this.subscriptionLocation,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'kind': ?kind,
      'linkedResourceId': ?linkedResourceId,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'subscriptionLocation': ?subscriptionLocation,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetPrivateLinkScopedResourceResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkScopedResourceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkedResourceId: (() { final guardedValue = map['linkedResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionLocation: (() { final guardedValue = map['subscriptionLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
