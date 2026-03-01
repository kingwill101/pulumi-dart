// ignore_for_file: unused_element, unnecessary_cast

import 'connection_properties_response_private_link_service_connection_state.dart';
import 'private_endpoint_response.dart';

/// The properties of a private endpoint connection.
class ConnectionPropertiesResponse {
  /// The list of group ids for the private endpoint connection.
  final List<String>? groupIds;
  /// The private endpoint.
  final PrivateEndpointResponse? privateEndpoint;
  /// The connection state.
  final ConnectionPropertiesResponsePrivateLinkServiceConnectionState? privateLinkServiceConnectionState;
  /// The provisioning state.
  final String provisioningState;

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
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory ConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionPropertiesResponse(
      groupIds: map['groupIds'] == null ? null : (map['groupIds'] as List).cast<String>(),
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : ConnectionPropertiesResponsePrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

