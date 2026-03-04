// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_property_response.dart';
import 'private_link_service_connection_state_property_response.dart';

/// Result data returned by getPrivateEndpointConnection.
class GetPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Group id of the private endpoint.
  final String? groupId;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;

  /// Private endpoint which the connection belongs to.
  final PrivateEndpointPropertyResponse? privateEndpoint;

  /// Connection State of the Private Endpoint Connection.
  final PrivateLinkServiceConnectionStatePropertyResponse?
  privateLinkServiceConnectionState;

  /// Provisioning state of the private endpoint.
  final String? provisioningState;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetPrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [groupId] Group id of the private endpoint.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateLinkServiceConnectionState] Connection State of the Private Endpoint Connection.
  /// [provisioningState] Provisioning state of the private endpoint.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetPrivateEndpointConnectionResult({
    required this.azureApiVersion,
    this.groupId,
    required this.id,
    required this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'groupId': ?groupId,
      'id': id,
      'name': name,
      'privateEndpoint': ?privateEndpoint?.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState
          ?.toMap(),
      'provisioningState': ?provisioningState,
      'type': type,
    };
  }

  factory GetPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpoint: (() {
        final guardedValue = map['privateEndpoint'];
        if (guardedValue == null) return null;
        return PrivateEndpointPropertyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      privateLinkServiceConnectionState: (() {
        final guardedValue = map['privateLinkServiceConnectionState'];
        if (guardedValue == null) return null;
        return PrivateLinkServiceConnectionStatePropertyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
    );
  }
}
