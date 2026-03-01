// ignore_for_file: unused_element, unnecessary_cast

import 'private_link_service_connection_state.dart';

/// The properties of a private endpoint connection
class PrivateEndpointConnectionProperties {
  /// The current state of a private endpoint connection
  final PrivateLinkServiceConnectionState privateLinkServiceConnectionState;

  /// Creates a new [PrivateEndpointConnectionProperties].
  /// [privateLinkServiceConnectionState] The current state of a private endpoint connection
  PrivateEndpointConnectionProperties({
    required this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLinkServiceConnectionState': privateLinkServiceConnectionState.toMap(),
    };
  }

  factory PrivateEndpointConnectionProperties.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionProperties(
      privateLinkServiceConnectionState: PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
    );
  }
}

