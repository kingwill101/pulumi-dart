// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDiskAccessAPrivateEndpointConnection.
class GetDiskAccessAPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The resource of private end point.
  final PrivateEndpointResponse privateEndpoint;
  /// A collection of information about the state of the connection between DiskAccess and Virtual Network.
  final PrivateLinkServiceConnectionStateResponse privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDiskAccessAPrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [privateEndpoint] The resource of private end point.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between DiskAccess and Virtual Network.
  /// [provisioningState] The provisioning state of the private endpoint connection resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetDiskAccessAPrivateEndpointConnectionResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.privateEndpoint,
    required this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'privateEndpoint': privateEndpoint.toMap(),
      'privateLinkServiceConnectionState': privateLinkServiceConnectionState.toMap(),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDiskAccessAPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetDiskAccessAPrivateEndpointConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpoint: PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

