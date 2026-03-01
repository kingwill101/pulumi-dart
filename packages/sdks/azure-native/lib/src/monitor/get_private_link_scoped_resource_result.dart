// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getPrivateLinkScopedResource.
class GetPrivateLinkScopedResourceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The kind of scoped Azure monitor resource.
  final String? kind;
  /// The resource id of the scoped Azure monitor resource.
  final String? linkedResourceId;
  /// The name of the resource
  final String name;
  /// State of the Azure monitor resource.
  final String provisioningState;
  /// The location of a scoped subscription. Only needs to be specified for metric dataplane subscriptions.
  final String? subscriptionLocation;
  /// System data
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPrivateLinkScopedResourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [kind] The kind of scoped Azure monitor resource.
  /// [linkedResourceId] The resource id of the scoped Azure monitor resource.
  /// [name] The name of the resource
  /// [provisioningState] State of the Azure monitor resource.
  /// [subscriptionLocation] The location of a scoped subscription. Only needs to be specified for metric dataplane subscriptions.
  /// [systemData] System data
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetPrivateLinkScopedResourceResult({
    required this.azureApiVersion,
    required this.id,
    this.kind,
    this.linkedResourceId,
    required this.name,
    required this.provisioningState,
    this.subscriptionLocation,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'kind': ?kind,
      'linkedResourceId': ?linkedResourceId,
      'name': name,
      'provisioningState': provisioningState,
      'subscriptionLocation': ?subscriptionLocation,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetPrivateLinkScopedResourceResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkScopedResourceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      linkedResourceId: map['linkedResourceId'] == null ? null : map['linkedResourceId'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      subscriptionLocation: map['subscriptionLocation'] == null ? null : map['subscriptionLocation'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

