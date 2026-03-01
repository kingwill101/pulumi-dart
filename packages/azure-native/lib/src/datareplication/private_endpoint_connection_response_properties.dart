// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint.dart';
import 'private_link_service_connection_state.dart';

/// Represents Private endpoint connection response properties.
class PrivateEndpointConnectionResponseProperties {
  /// Represent private Endpoint network resource that is linked to the Private Endpoint connection.
  final PrivateEndpoint? privateEndpoint;
  /// Represents Private link service connection state.
  final PrivateLinkServiceConnectionState? privateLinkServiceConnectionState;

  /// Creates a new [PrivateEndpointConnectionResponseProperties].
  /// [privateEndpoint] Represent private Endpoint network resource that is linked to the Private Endpoint connection.
  /// [privateLinkServiceConnectionState] Represents Private link service connection state.
  PrivateEndpointConnectionResponseProperties({
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
    };
  }

  factory PrivateEndpointConnectionResponseProperties.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponseProperties(
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpoint.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
    );
  }
}

