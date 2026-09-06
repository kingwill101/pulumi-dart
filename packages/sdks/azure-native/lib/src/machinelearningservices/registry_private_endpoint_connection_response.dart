// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_resource_response.dart';
import 'registry_private_link_service_connection_state_response.dart';

/// Private endpoint connection definition.
class RegistryPrivateEndpointConnectionResponse {
  /// The group ids
  final pulumi.Input<List<String>?>? groupIds;
  /// This is the private endpoint connection name created on SRP
  /// Full resource id: /subscriptions/{subId}/resourceGroups/{rgName}/providers/Microsoft.MachineLearningServices/{resourceType}/{resourceName}/registryPrivateEndpointConnections/{peConnectionName}
  final pulumi.Input<String?>? id;
  /// Same as workspace location.
  final pulumi.Input<String?>? location;
  /// The PE network resource that is linked to this PE connection.
  final pulumi.Input<PrivateEndpointResourceResponse?>? privateEndpoint;
  /// One of null, "Succeeded", "Provisioning", "Failed". While not approved, it's null.
  final pulumi.Input<String?>? provisioningState;
  /// The connection state.
  final pulumi.Input<RegistryPrivateLinkServiceConnectionStateResponse?>? registryPrivateLinkServiceConnectionState;

  /// Creates a new [RegistryPrivateEndpointConnectionResponse].
  /// [groupIds] The group ids
  /// [id] This is the private endpoint connection name created on SRP
  /// [location] Same as workspace location.
  /// [privateEndpoint] The PE network resource that is linked to this PE connection.
  /// [provisioningState] One of null, "Succeeded", "Provisioning", "Failed". While not approved, it's null.
  /// [registryPrivateLinkServiceConnectionState] The connection state.
  const RegistryPrivateEndpointConnectionResponse({
    this.groupIds,
    this.id,
    this.location,
    this.privateEndpoint,
    this.provisioningState,
    this.registryPrivateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'id': ?id,
      'location': ?location,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointResourceResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'registryPrivateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<RegistryPrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(registryPrivateLinkServiceConnectionState, (value) => value.toMap()),
    };
  }

  factory RegistryPrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return RegistryPrivateEndpointConnectionResponse(
      groupIds: (() { final guardedValue = map['groupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpointResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryPrivateLinkServiceConnectionState: (() { final guardedValue = map['registryPrivateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryPrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
