// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// The properties of a private endpoint connection
class PrivateEndpointConnectionPropertiesResponse {
  /// The private endpoint property of a private endpoint connection
  final PrivateEndpointResponse? privateEndpoint;
  /// The current state of a private endpoint connection
  final PrivateLinkServiceConnectionStateResponse privateLinkServiceConnectionState;

  /// Creates a new [PrivateEndpointConnectionPropertiesResponse].
  /// [privateEndpoint] The private endpoint property of a private endpoint connection
  /// [privateLinkServiceConnectionState] The current state of a private endpoint connection
  PrivateEndpointConnectionPropertiesResponse({
    this.privateEndpoint,
    required this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': privateLinkServiceConnectionState.toMap(),
    };
  }

  factory PrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesResponse(
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
    );
  }
}

