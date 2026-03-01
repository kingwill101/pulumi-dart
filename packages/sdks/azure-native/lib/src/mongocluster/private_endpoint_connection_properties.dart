// ignore_for_file: unused_element, unnecessary_cast

import 'private_link_service_connection_state.dart';

/// Properties of the private endpoint connection.
class PrivateEndpointConnectionProperties {
  /// A collection of information about the state of the connection between service consumer and provider.
  final PrivateLinkServiceConnectionState privateLinkServiceConnectionState;

  /// Creates a new [PrivateEndpointConnectionProperties].
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
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

