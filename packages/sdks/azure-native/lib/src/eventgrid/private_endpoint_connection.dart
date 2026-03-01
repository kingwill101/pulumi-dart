// ignore_for_file: unused_element, unnecessary_cast

import 'connection_state.dart';
import 'private_endpoint.dart';

class PrivateEndpointConnection {
  /// GroupIds from the private link service resource.
  final List<String>? groupIds;
  /// The Private Endpoint resource for this Connection.
  final PrivateEndpoint? privateEndpoint;
  /// Details about the state of the connection.
  final ConnectionState? privateLinkServiceConnectionState;
  /// Provisioning state of the Private Endpoint Connection.
  final String? provisioningState;

  /// Creates a new [PrivateEndpointConnection].
  /// [groupIds] GroupIds from the private link service resource.
  /// [privateEndpoint] The Private Endpoint resource for this Connection.
  /// [privateLinkServiceConnectionState] Details about the state of the connection.
  /// [provisioningState] Provisioning state of the Private Endpoint Connection.
  PrivateEndpointConnection({
    this.groupIds,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': ?provisioningState,
    };
  }

  factory PrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnection(
      groupIds: map['groupIds'] == null ? null : (map['groupIds'] as List).cast<String>(),
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpoint.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : ConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
    );
  }
}

