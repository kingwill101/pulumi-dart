// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state_response.dart';
import 'resource_id_response.dart';

/// Private endpoint connection properties.
class PrivateEndpointConnectionPropertiesResponse {
  /// ARM id for the private endpoint resource corresponding to the connection.
  final pulumi.Input<ResourceIdResponse> privateEndpoint;
  /// State of the private endpoint connection.
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse>? privateLinkServiceConnectionState;
  /// Indicates whether there is an ongoing operation on the private endpoint.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [PrivateEndpointConnectionPropertiesResponse].
  /// [privateEndpoint] ARM id for the private endpoint resource corresponding to the connection.
  /// [privateLinkServiceConnectionState] State of the private endpoint connection.
  /// [provisioningState] Indicates whether there is an ongoing operation on the private endpoint.
  PrivateEndpointConnectionPropertiesResponse({
    required this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': pulumi.Input.mapInputValue<ResourceIdResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory PrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesResponse(
      privateEndpoint: (ResourceIdResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>())).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

