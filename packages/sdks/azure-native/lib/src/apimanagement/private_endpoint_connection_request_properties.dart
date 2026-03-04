// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// The connection state of the private endpoint connection.
class PrivateEndpointConnectionRequestProperties {
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionState>?
  privateLinkServiceConnectionState;

  /// Creates a new [PrivateEndpointConnectionRequestProperties].
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  PrivateEndpointConnectionRequestProperties({
    this.privateLinkServiceConnectionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateLinkServiceConnectionState':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateLinkServiceConnectionState,
            Map<String, dynamic>
          >(privateLinkServiceConnectionState, (value) => value.toMap()),
    };
  }

  factory PrivateEndpointConnectionRequestProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return PrivateEndpointConnectionRequestProperties(
      privateLinkServiceConnectionState: (() {
        final guardedValue = map['privateLinkServiceConnectionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateLinkServiceConnectionState.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
