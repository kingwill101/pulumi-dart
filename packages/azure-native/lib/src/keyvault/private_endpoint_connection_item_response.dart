// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// Private endpoint connection item.
class PrivateEndpointConnectionItemResponse {
  /// Modified whenever there is a change in the state of private endpoint connection.
  final String? etag;
  /// Id of private endpoint connection.
  final String? id;
  /// Properties of the private endpoint object.
  final PrivateEndpointResponse? privateEndpoint;
  /// Approval state of the private link connection.
  final PrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// Provisioning state of the private endpoint connection.
  final String provisioningState;

  /// Creates a new [PrivateEndpointConnectionItemResponse].
  /// [etag] Modified whenever there is a change in the state of private endpoint connection.
  /// [id] Id of private endpoint connection.
  /// [privateEndpoint] Properties of the private endpoint object.
  /// [privateLinkServiceConnectionState] Approval state of the private link connection.
  /// [provisioningState] Provisioning state of the private endpoint connection.
  PrivateEndpointConnectionItemResponse({
    this.etag,
    this.id,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'id': ?id,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory PrivateEndpointConnectionItemResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionItemResponse(
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

