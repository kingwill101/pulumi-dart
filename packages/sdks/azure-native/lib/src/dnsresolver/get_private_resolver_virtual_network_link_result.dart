// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateResolverVirtualNetworkLink.
class GetPrivateResolverVirtualNetworkLinkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// ETag of the virtual network link.
  final String etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Metadata attached to the virtual network link.
  final Map<String, String>? metadata;
  /// The name of the resource
  final String name;
  /// The current provisioning state of the virtual network link. This is a read-only property and any attempt to set this value will be ignored.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The reference to the virtual network. This cannot be changed after creation.
  final SubResourceResponse virtualNetwork;

  /// Creates a new [GetPrivateResolverVirtualNetworkLinkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] ETag of the virtual network link.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [metadata] Metadata attached to the virtual network link.
  /// [name] The name of the resource
  /// [provisioningState] The current provisioning state of the virtual network link. This is a read-only property and any attempt to set this value will be ignored.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualNetwork] The reference to the virtual network. This cannot be changed after creation.
  GetPrivateResolverVirtualNetworkLinkResult({
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    this.metadata,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
    required this.virtualNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'metadata': ?metadata,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
      'virtualNetwork': virtualNetwork.toMap(),
    };
  }

  factory GetPrivateResolverVirtualNetworkLinkResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateResolverVirtualNetworkLinkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata']! as Map).cast<String, String>(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      virtualNetwork: SubResourceResponse.fromMap((map['virtualNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}

