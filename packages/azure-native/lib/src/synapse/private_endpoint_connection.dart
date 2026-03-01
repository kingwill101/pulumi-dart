// ignore_for_file: unused_element, unnecessary_cast

import 'private_link_service_connection_state.dart';

/// A private endpoint connection
class PrivateEndpointConnection {
  /// Connection state of the private endpoint connection.
  final PrivateLinkServiceConnectionState? privateLinkServiceConnectionState;

  /// Creates a new [PrivateEndpointConnection].
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection.
  PrivateEndpointConnection({
    this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
    };
  }

  factory PrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnection(
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
    );
  }
}

