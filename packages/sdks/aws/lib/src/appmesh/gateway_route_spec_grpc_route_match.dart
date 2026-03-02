// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayRouteSpecGrpcRouteMatch {
  /// The port number to match from the request.
  final pulumi.Input<int>? port;
  /// Fully qualified domain name for the service to match from the request.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GatewayRouteSpecGrpcRouteMatch].
  /// [port] The port number to match from the request.
  /// [serviceName] Fully qualified domain name for the service to match from the request.
  GatewayRouteSpecGrpcRouteMatch({
    this.port,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'serviceName': serviceName,
    };
  }

  factory GatewayRouteSpecGrpcRouteMatch.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecGrpcRouteMatch(
      port: map['port'] == null ? null : (map['port'] as int).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

