// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_property_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// A private endpoint connection.
class SimplePrivateEndpointConnectionResponse {
  /// Group ids of the private endpoint connection.
  final List<String>? groupIds;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Private endpoint which the connection belongs to.
  final PrivateEndpointPropertyResponse? privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  final PrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [SimplePrivateEndpointConnectionResponse].
  /// [groupIds] Group ids of the private endpoint connection.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  SimplePrivateEndpointConnectionResponse({
    this.groupIds,
    required this.id,
    required this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'id': id,
      'name': name,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory SimplePrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return SimplePrivateEndpointConnectionResponse(
      groupIds: map['groupIds'] == null ? null : (map['groupIds'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointPropertyResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

