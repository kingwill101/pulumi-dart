// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_resource.dart';
import 'registry_private_link_service_connection_state.dart';

/// Properties of the Private Endpoint Connection
class RegistryPrivateEndpointConnectionProperties {
  /// The group ids
  final pulumi.Input<List<String>>? groupIds;
  /// The PE network resource that is linked to this PE connection.
  final pulumi.Input<PrivateEndpointResource>? privateEndpoint;
  /// One of null, "Succeeded", "Provisioning", "Failed". While not approved, it's null.
  final pulumi.Input<String>? provisioningState;
  /// The connection state.
  final pulumi.Input<RegistryPrivateLinkServiceConnectionState>? registryPrivateLinkServiceConnectionState;

  /// Creates a new [RegistryPrivateEndpointConnectionProperties].
  /// [groupIds] The group ids
  /// [privateEndpoint] The PE network resource that is linked to this PE connection.
  /// [provisioningState] One of null, "Succeeded", "Provisioning", "Failed". While not approved, it's null.
  /// [registryPrivateLinkServiceConnectionState] The connection state.
  const RegistryPrivateEndpointConnectionProperties({
    this.groupIds,
    this.privateEndpoint,
    this.provisioningState,
    this.registryPrivateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointResource, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'registryPrivateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<RegistryPrivateLinkServiceConnectionState, Map<String, dynamic>>(registryPrivateLinkServiceConnectionState, (value) => value.toMap()),
    };
  }

  factory RegistryPrivateEndpointConnectionProperties.fromMap(Map<String, dynamic> map) {
    return RegistryPrivateEndpointConnectionProperties(
      groupIds: (() { final guardedValue = map['groupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpointResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryPrivateLinkServiceConnectionState: (() { final guardedValue = map['registryPrivateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryPrivateLinkServiceConnectionState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

