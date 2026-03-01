// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_property.dart';
import 'private_link_service_connection_state_property.dart';

/// Properties of a private endpoint connection.
class PrivateEndpointConnectionProperties {
  /// Private endpoint which the connection belongs to.
  final PrivateEndpointProperty? privateEndpoint;
  /// Connection state of the private endpoint connection.
  final PrivateLinkServiceConnectionStateProperty? privateLinkServiceConnectionState;

  /// Creates a new [PrivateEndpointConnectionProperties].
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection.
  PrivateEndpointConnectionProperties({
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
    };
  }

  factory PrivateEndpointConnectionProperties.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionProperties(
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointProperty.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionStateProperty.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
    );
  }
}

