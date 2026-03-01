// ignore_for_file: unused_element, unnecessary_cast

import 'private_link_service_connection_state.dart';

/// The connection state of the private endpoint connection.
class PrivateEndpointConnectionRequestProperties {
  /// A collection of information about the state of the connection between service consumer and provider.
  final PrivateLinkServiceConnectionState? privateLinkServiceConnectionState;

  /// Creates a new [PrivateEndpointConnectionRequestProperties].
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  PrivateEndpointConnectionRequestProperties({
    this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
    };
  }

  factory PrivateEndpointConnectionRequestProperties.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionRequestProperties(
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
    );
  }
}

