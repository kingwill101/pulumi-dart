// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateEndpointConnection.
class GetPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// List of resources private endpoint is mapped
  final List<String>? groupIds;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Private Endpoint resource
  final PrivateEndpointResponse? privateEndpoint;
  /// Private Link Service Connection State.
  final PrivateLinkServiceConnectionStateResponse privateLinkServiceConnectionState;
  /// Provisioning State of Private Endpoint connection resource
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [groupIds] List of resources private endpoint is mapped
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [privateEndpoint] Private Endpoint resource
  /// [privateLinkServiceConnectionState] Private Link Service Connection State.
  /// [provisioningState] Provisioning State of Private Endpoint connection resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetPrivateEndpointConnectionResult({
    required this.azureApiVersion,
    this.groupIds,
    required this.id,
    required this.name,
    this.privateEndpoint,
    required this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'groupIds': ?groupIds,
      'id': id,
      'name': name,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': privateLinkServiceConnectionState.toMap(),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      groupIds: map['groupIds'] == null ? null : (map['groupIds'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

