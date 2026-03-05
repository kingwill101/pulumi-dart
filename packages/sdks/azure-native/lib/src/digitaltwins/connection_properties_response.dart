// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_properties_response_private_link_service_connection_state.dart';
import 'private_endpoint_response.dart';

/// The properties of a private endpoint connection.
class ConnectionPropertiesResponse {
  /// The list of group ids for the private endpoint connection.
  final pulumi.Input<List<String>>? groupIds;
  /// The private endpoint.
  final pulumi.Input<PrivateEndpointResponse>? privateEndpoint;
  /// The connection state.
  final pulumi.Input<ConnectionPropertiesResponsePrivateLinkServiceConnectionState>? privateLinkServiceConnectionState;
  /// The provisioning state.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ConnectionPropertiesResponse].
  /// [groupIds] The list of group ids for the private endpoint connection.
  /// [privateEndpoint] The private endpoint.
  /// [privateLinkServiceConnectionState] The connection state.
  /// [provisioningState] The provisioning state.
  ConnectionPropertiesResponse({
    this.groupIds,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<ConnectionPropertiesResponsePrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory ConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionPropertiesResponse(
      groupIds: (() { final guardedValue = map['groupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionPropertiesResponsePrivateLinkServiceConnectionState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

