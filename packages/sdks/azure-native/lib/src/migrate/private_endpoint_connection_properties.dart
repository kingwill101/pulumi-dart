// ignore_for_file: unused_element, unnecessary_cast

import 'private_link_service_connection_state.dart';

/// Private endpoint connection properties.
class PrivateEndpointConnectionProperties {
  /// State of the private endpoint connection.
  final PrivateLinkServiceConnectionState? privateLinkServiceConnectionState;

  /// Creates a new [PrivateEndpointConnectionProperties].
  /// [privateLinkServiceConnectionState] State of the private endpoint connection.
  PrivateEndpointConnectionProperties({
    this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
    };
  }

  factory PrivateEndpointConnectionProperties.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionProperties(
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
    );
  }
}

