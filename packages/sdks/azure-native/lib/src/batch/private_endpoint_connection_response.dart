// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// Contains information about a private link resource.
class PrivateEndpointConnectionResponse {
  /// The ETag of the resource, used for concurrency statements.
  final String etag;
  /// The value has one and only one group id.
  final List<String> groupIds;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The private endpoint of the private endpoint connection.
  final PrivateEndpointResponse privateEndpoint;
  /// The private link service connection state of the private endpoint connection.
  final PrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [PrivateEndpointConnectionResponse].
  /// [etag] The ETag of the resource, used for concurrency statements.
  /// [groupIds] The value has one and only one group id.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [privateEndpoint] The private endpoint of the private endpoint connection.
  /// [privateLinkServiceConnectionState] The private link service connection state of the private endpoint connection.
  /// [provisioningState] The provisioning state of the private endpoint connection.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  PrivateEndpointConnectionResponse({
    required this.etag,
    required this.groupIds,
    required this.id,
    required this.name,
    required this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'groupIds': groupIds,
      'id': id,
      'name': name,
      'privateEndpoint': privateEndpoint.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory PrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponse(
      etag: map['etag'] as String,
      groupIds: (map['groupIds'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpoint: PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

