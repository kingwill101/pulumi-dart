// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_private_endpoint.dart';

/// Represents private endpoint connection proxy request.
class PrivateEndpointConnectionProxyProperties {
  /// Represent remote private endpoint information for the private endpoint connection proxy.
  final pulumi.Input<RemotePrivateEndpoint>? remotePrivateEndpoint;

  /// Creates a new [PrivateEndpointConnectionProxyProperties].
  /// [remotePrivateEndpoint] Represent remote private endpoint information for the private endpoint connection proxy.
  PrivateEndpointConnectionProxyProperties({
    this.remotePrivateEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remotePrivateEndpoint': ?pulumi.Input.mapOptionalInputValue<RemotePrivateEndpoint, Map<String, dynamic>>(remotePrivateEndpoint, (value) => value.toMap()),
    };
  }

  factory PrivateEndpointConnectionProxyProperties.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionProxyProperties(
      remotePrivateEndpoint: map['remotePrivateEndpoint'] == null ? null : (RemotePrivateEndpoint.fromMap((map['remotePrivateEndpoint'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

