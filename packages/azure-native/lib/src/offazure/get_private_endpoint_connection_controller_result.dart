// ignore_for_file: unused_element, unnecessary_cast

import 'private_link_service_connection_state_response.dart';
import 'resource_id_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateEndpointConnectionController.
class GetPrivateEndpointConnectionControllerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// array of group ids
  final List<String> groupIds;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// private endpoints
  final ResourceIdResponse privateEndpoint;
  /// private endpoints connection state
  final PrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// provisioning state enum
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPrivateEndpointConnectionControllerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [groupIds] array of group ids
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [privateEndpoint] private endpoints
  /// [privateLinkServiceConnectionState] private endpoints connection state
  /// [provisioningState] provisioning state enum
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetPrivateEndpointConnectionControllerResult({
    required this.azureApiVersion,
    required this.groupIds,
    required this.id,
    required this.name,
    required this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'groupIds': groupIds,
      'id': id,
      'name': name,
      'privateEndpoint': privateEndpoint.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetPrivateEndpointConnectionControllerResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionControllerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      groupIds: (map['groupIds'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpoint: ResourceIdResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

