// ignore_for_file: unused_element, unnecessary_cast

import 'connection_state.dart';
import 'private_endpoint.dart';

class PrivateEndpointConnection {
  /// Specifies the private endpoint.
  final PrivateEndpoint? privateEndpoint;
  /// Specifies the connection state.
  final ConnectionState? privateLinkServiceConnectionState;
  /// Provisioning state of the Private Endpoint Connection.
  final String? provisioningState;

  /// Creates a new [PrivateEndpointConnection].
  /// [privateEndpoint] Specifies the private endpoint.
  /// [privateLinkServiceConnectionState] Specifies the connection state.
  /// [provisioningState] Provisioning state of the Private Endpoint Connection.
  PrivateEndpointConnection({
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': ?provisioningState,
    };
  }

  factory PrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnection(
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpoint.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : ConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
    );
  }
}

