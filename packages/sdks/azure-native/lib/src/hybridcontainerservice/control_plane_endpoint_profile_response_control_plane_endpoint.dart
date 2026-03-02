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
    return <String, dynamic>{
      'hostIP': ?hostIP,
      'port': ?port,
    };
  }

  factory ControlPlaneEndpointProfileResponseControlPlaneEndpoint.fromMap(Map<String, dynamic> map) {
    return ControlPlaneEndpointProfileResponseControlPlaneEndpoint(
      hostIP: map['hostIP'] == null ? null : (map['hostIP'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as String).input(),
    );
  }
}

