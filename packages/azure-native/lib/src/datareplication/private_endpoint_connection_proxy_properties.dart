// ignore_for_file: unused_element, unnecessary_cast

import 'remote_private_endpoint.dart';

/// Represents private endpoint connection proxy request.
class PrivateEndpointConnectionProxyProperties {
  /// Represent remote private endpoint information for the private endpoint connection proxy.
  final RemotePrivateEndpoint? remotePrivateEndpoint;

  /// Creates a new [PrivateEndpointConnectionProxyProperties].
  /// [remotePrivateEndpoint] Represent remote private endpoint information for the private endpoint connection proxy.
  PrivateEndpointConnectionProxyProperties({
    this.remotePrivateEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remotePrivateEndpoint': ?remotePrivateEndpoint == null ? null : remotePrivateEndpoint!.toMap(),
    };
  }

  factory PrivateEndpointConnectionProxyProperties.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionProxyProperties(
      remotePrivateEndpoint: map['remotePrivateEndpoint'] == null ? null : RemotePrivateEndpoint.fromMap((map['remotePrivateEndpoint'] as Map).cast<String, dynamic>()),
    );
  }
}

