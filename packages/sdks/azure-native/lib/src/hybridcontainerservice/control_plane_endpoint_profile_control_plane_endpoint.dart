// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API server endpoint for the control plane
class ControlPlaneEndpointProfileControlPlaneEndpoint {
  /// Host IP address for API server
  final pulumi.Input<String>? hostIP;
  /// Port for the API server
  final pulumi.Input<String>? port;

  /// Creates a new [ControlPlaneEndpointProfileControlPlaneEndpoint].
  /// [hostIP] Host IP address for API server
  /// [port] Port for the API server
  ControlPlaneEndpointProfileControlPlaneEndpoint({
    this.hostIP,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostIP': ?hostIP,
      'port': ?port,
    };
  }

  factory ControlPlaneEndpointProfileControlPlaneEndpoint.fromMap(Map<String, dynamic> map) {
    return ControlPlaneEndpointProfileControlPlaneEndpoint(
      hostIP: map['hostIP'] == null ? null : (map['hostIP'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as String).input(),
    );
  }
}

