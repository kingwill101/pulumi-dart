// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mhsmprivate_endpoint_response.dart';
import 'mhsmprivate_link_service_connection_state_response.dart';

/// Private endpoint connection item.
class MHSMPrivateEndpointConnectionItemResponse {
  /// Modified whenever there is a change in the state of private endpoint connection.
  final pulumi.Input<String>? etag;
  /// Id of private endpoint connection.
  final pulumi.Input<String>? id;
  /// Properties of the private endpoint object.
  final pulumi.Input<MHSMPrivateEndpointResponse>? privateEndpoint;
  /// Approval state of the private link connection.
  final pulumi.Input<MHSMPrivateLinkServiceConnectionStateResponse>? privateLinkServiceConnectionState;
  /// Provisioning state of the private endpoint connection.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [MHSMPrivateEndpointConnectionItemResponse].
  /// [etag] Modified whenever there is a change in the state of private endpoint connection.
  /// [id] Id of private endpoint connection.
  /// [privateEndpoint] Properties of the private endpoint object.
  /// [privateLinkServiceConnectionState] Approval state of the private link connection.
  /// [provisioningState] Provisioning state of the private endpoint connection.
  const MHSMPrivateEndpointConnectionItemResponse({
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
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<MHSMPrivateEndpointResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<MHSMPrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory MHSMPrivateEndpointConnectionItemResponse.fromMap(Map<String, dynamic> map) {
    return MHSMPrivateEndpointConnectionItemResponse(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MHSMPrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MHSMPrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

