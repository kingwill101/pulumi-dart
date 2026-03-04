// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_property_response.dart';
import 'server_private_link_service_connection_state_property_response.dart';

/// Properties of a private endpoint connection.
class ServerPrivateEndpointConnectionPropertiesResponse {
  /// Private endpoint which the connection belongs to.
  final pulumi.Input<PrivateEndpointPropertyResponse>? privateEndpoint;

  /// Connection state of the private endpoint connection.
  final pulumi.Input<ServerPrivateLinkServiceConnectionStatePropertyResponse>?
  privateLinkServiceConnectionState;

  /// State of the private endpoint connection.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ServerPrivateEndpointConnectionPropertiesResponse].
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection.
  /// [provisioningState] State of the private endpoint connection.
  ServerPrivateEndpointConnectionPropertiesResponse({
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateEndpointPropertyResponse,
            Map<String, dynamic>
          >(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState':
          ?pulumi.Input.mapOptionalInputValue<
            ServerPrivateLinkServiceConnectionStatePropertyResponse,
            Map<String, dynamic>
          >(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory ServerPrivateEndpointConnectionPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServerPrivateEndpointConnectionPropertiesResponse(
      privateEndpoint: (() {
        final guardedValue = map['privateEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateEndpointPropertyResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateLinkServiceConnectionState: (() {
        final guardedValue = map['privateLinkServiceConnectionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServerPrivateLinkServiceConnectionStatePropertyResponse.fromMap(
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
