// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API server endpoint for the control plane
class ControlPlaneEndpointProfileResponseControlPlaneEndpoint {
  /// Host IP address for API server
  final pulumi.Input<String>? hostIP;

  /// Port for the API server
  final pulumi.Input<String>? port;

  /// Creates a new [ControlPlaneEndpointProfileResponseControlPlaneEndpoint].
  /// [hostIP] Host IP address for API server
  /// [port] Port for the API server
  ControlPlaneEndpointProfileResponseControlPlaneEndpoint({
    this.hostIP,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'hostIP': ?hostIP, 'port': ?port};
  }

  factory ControlPlaneEndpointProfileResponseControlPlaneEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return ControlPlaneEndpointProfileResponseControlPlaneEndpoint(
      hostIP: (() {
        final guardedValue = map['hostIP'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
