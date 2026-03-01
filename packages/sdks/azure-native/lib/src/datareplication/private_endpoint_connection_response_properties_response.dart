// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// Represents Private endpoint connection response properties.
class PrivateEndpointConnectionResponsePropertiesResponse {
  /// Represent private Endpoint network resource that is linked to the Private Endpoint connection.
  final PrivateEndpointResponse? privateEndpoint;
  /// Represents Private link service connection state.
  final PrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// Gets or sets provisioning state of the private endpoint connection.
  final String provisioningState;

  /// Creates a new [PrivateEndpointConnectionResponsePropertiesResponse].
  /// [privateEndpoint] Represent private Endpoint network resource that is linked to the Private Endpoint connection.
  /// [privateLinkServiceConnectionState] Represents Private link service connection state.
  /// [provisioningState] Gets or sets provisioning state of the private endpoint connection.
  PrivateEndpointConnectionResponsePropertiesResponse({
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory PrivateEndpointConnectionResponsePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponsePropertiesResponse(
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

