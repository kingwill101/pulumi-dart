// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';

/// The properties of a private endpoint connection
class PrivateEndpointConnectionPropertiesResponse {
  /// The private endpoint property of a private endpoint connection
  final pulumi.Input<PrivateEndpointResponse?>? privateEndpoint;
  /// The current state of a private endpoint connection
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse> privateLinkServiceConnectionState;

  /// Creates a new [PrivateEndpointConnectionPropertiesResponse].
  /// [privateEndpoint] The private endpoint property of a private endpoint connection
  /// [privateLinkServiceConnectionState] The current state of a private endpoint connection
  const PrivateEndpointConnectionPropertiesResponse({
    this.privateEndpoint,
    required this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': pulumi.Input.mapInputValue<PrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
    };
  }

  factory PrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesResponse(
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkServiceConnectionState: pulumi.Input.fromValue(PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())),
    );
  }
}
