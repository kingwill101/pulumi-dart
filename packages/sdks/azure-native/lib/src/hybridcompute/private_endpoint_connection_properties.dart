// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_property.dart';
import 'private_link_service_connection_state_property.dart';

/// Properties of a private endpoint connection.
class PrivateEndpointConnectionProperties {
  /// Private endpoint which the connection belongs to.
  final pulumi.Input<PrivateEndpointProperty>? privateEndpoint;

  /// Connection state of the private endpoint connection.
  final pulumi.Input<PrivateLinkServiceConnectionStateProperty>?
  privateLinkServiceConnectionState;

  /// Creates a new [PrivateEndpointConnectionProperties].
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection.
  PrivateEndpointConnectionProperties({
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateEndpointProperty,
            Map<String, dynamic>
          >(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateLinkServiceConnectionStateProperty,
            Map<String, dynamic>
          >(privateLinkServiceConnectionState, (value) => value.toMap()),
    };
  }

  factory PrivateEndpointConnectionProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return PrivateEndpointConnectionProperties(
      privateEndpoint: (() {
        final guardedValue = map['privateEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateEndpointProperty.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateLinkServiceConnectionState: (() {
        final guardedValue = map['privateLinkServiceConnectionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateLinkServiceConnectionStateProperty.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
