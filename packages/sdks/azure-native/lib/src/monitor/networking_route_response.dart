// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Networking route configuration.
class NetworkingRouteResponse {
  /// Route path.
  final pulumi.Input<String>? path;
  /// The port that will be configured externally. If not specified, it will use the port from the receiver definition.
  final pulumi.Input<int>? port;
  /// The name of the previously defined receiver.
  final pulumi.Input<String> receiver;
  /// Route subdomain.
  final pulumi.Input<String>? subdomain;

  /// Creates a new [NetworkingRouteResponse].
  /// [path] Route path.
  /// [port] The port that will be configured externally. If not specified, it will use the port from the receiver definition.
  /// [receiver] The name of the previously defined receiver.
  /// [subdomain] Route subdomain.
  NetworkingRouteResponse({
    this.path,
    this.port,
    required this.receiver,
    this.subdomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'port': ?port,
      'receiver': receiver,
      'subdomain': ?subdomain,
    };
  }

  factory NetworkingRouteResponse.fromMap(Map<String, dynamic> map) {
    return NetworkingRouteResponse(
      path: map['path'] == null ? null : (map['path']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      receiver: (map['receiver'] as String).input(),
      subdomain: map['subdomain'] == null ? null : (map['subdomain']! as String).input(),
    );
  }
}

