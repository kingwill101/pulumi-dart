// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_resource_response.dart';
import 'registry_private_link_service_connection_state_response.dart';

/// Properties of the Private Endpoint Connection
class RegistryPrivateEndpointConnectionPropertiesResponse {
  /// The group ids
  final pulumi.Input<List<String>>? groupIds;
  /// The PE network resource that is linked to this PE connection.
  final pulumi.Input<PrivateEndpointResourceResponse>? privateEndpoint;
  /// One of null, "Succeeded", "Provisioning", "Failed". While not approved, it's null.
  final pulumi.Input<String>? provisioningState;
  /// The connection state.
  final pulumi.Input<RegistryPrivateLinkServiceConnectionStateResponse>? registryPrivateLinkServiceConnectionState;

  /// Creates a new [RegistryPrivateEndpointConnectionPropertiesResponse].
  /// [groupIds] The group ids
  /// [privateEndpoint] The PE network resource that is linked to this PE connection.
  /// [provisioningState] One of null, "Succeeded", "Provisioning", "Failed". While not approved, it's null.
  /// [registryPrivateLinkServiceConnectionState] The connection state.
  RegistryPrivateEndpointConnectionPropertiesResponse({
    this.groupIds,
    this.privateEndpoint,
    this.provisioningState,
    this.registryPrivateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointResourceResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'registryPrivateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<RegistryPrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(registryPrivateLinkServiceConnectionState, (value) => value.toMap()),
    };
  }

  factory RegistryPrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RegistryPrivateEndpointConnectionPropertiesResponse(
      groupIds: map['groupIds'] == null ? null : ((map['groupIds'] as List).cast<String>()).input(),
      privateEndpoint: map['privateEndpoint'] == null ? null : (PrivateEndpointResourceResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>())).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
      registryPrivateLinkServiceConnectionState: map['registryPrivateLinkServiceConnectionState'] == null ? null : (RegistryPrivateLinkServiceConnectionStateResponse.fromMap((map['registryPrivateLinkServiceConnectionState'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

