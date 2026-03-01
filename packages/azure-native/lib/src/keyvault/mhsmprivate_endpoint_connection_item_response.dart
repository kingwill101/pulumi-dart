// ignore_for_file: unused_element, unnecessary_cast

import 'mhsmprivate_endpoint_response.dart';
import 'mhsmprivate_link_service_connection_state_response.dart';

/// Private endpoint connection item.
class MHSMPrivateEndpointConnectionItemResponse {
  /// Modified whenever there is a change in the state of private endpoint connection.
  final String? etag;
  /// Id of private endpoint connection.
  final String? id;
  /// Properties of the private endpoint object.
  final MHSMPrivateEndpointResponse? privateEndpoint;
  /// Approval state of the private link connection.
  final MHSMPrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// Provisioning state of the private endpoint connection.
  final String provisioningState;

  /// Creates a new [MHSMPrivateEndpointConnectionItemResponse].
  /// [etag] Modified whenever there is a change in the state of private endpoint connection.
  /// [id] Id of private endpoint connection.
  /// [privateEndpoint] Properties of the private endpoint object.
  /// [privateLinkServiceConnectionState] Approval state of the private link connection.
  /// [provisioningState] Provisioning state of the private endpoint connection.
  MHSMPrivateEndpointConnectionItemResponse({
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

  factory MHSMPrivateEndpointConnectionItemResponse.fromMap(Map<String, dynamic> map) {
    return MHSMPrivateEndpointConnectionItemResponse(
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : MHSMPrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : MHSMPrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

