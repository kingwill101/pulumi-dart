// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// Private endpoint connection item.
class PrivateEndpointConnectionItemResponse {
  /// Modified whenever there is a change in the state of private endpoint connection.
  final pulumi.Input<String>? etag;

  /// Id of private endpoint connection.
  final pulumi.Input<String>? id;

  /// Properties of the private endpoint object.
  final pulumi.Input<PrivateEndpointResponse>? privateEndpoint;

  /// Approval state of the private link connection.
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse>?
  privateLinkServiceConnectionState;

  /// Provisioning state of the private endpoint connection.
  final pulumi.Input<String> provisioningState;

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
      'privateEndpoint':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateEndpointResponse,
            Map<String, dynamic>
          >(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateLinkServiceConnectionStateResponse,
            Map<String, dynamic>
          >(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory PrivateEndpointConnectionItemResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return PrivateEndpointConnectionItemResponse(
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateEndpoint: (() {
        final guardedValue = map['privateEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateEndpointResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateLinkServiceConnectionState: (() {
        final guardedValue = map['privateLinkServiceConnectionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateLinkServiceConnectionStateResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
    );
  }
}
