// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// A reference to a related private endpoint connection.
class PrivateEndpointConnectionReferenceResponse {
  /// The resource ID.
  final String id;
  /// The name of the resource.
  final String name;
  /// The resource of private endpoint.
  final PrivateEndpointResponse? privateEndpoint;
  /// A collection of information about the state of the connection between service consumer and provider.
  final PrivateLinkServiceConnectionStateResponse privateLinkServiceConnectionState;
  /// The provisioning status of the private endpoint connection.
  final String provisioningState;
  /// The type of the resource.
  final String type;

  /// Creates a new [PrivateEndpointConnectionReferenceResponse].
  /// [id] The resource ID.
  /// [name] The name of the resource.
  /// [privateEndpoint] The resource of private endpoint.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [provisioningState] The provisioning status of the private endpoint connection.
  /// [type] The type of the resource.
  PrivateEndpointConnectionReferenceResponse({
    required this.id,
    required this.name,
    this.privateEndpoint,
    required this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': privateLinkServiceConnectionState.toMap(),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory PrivateEndpointConnectionReferenceResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionReferenceResponse(
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

