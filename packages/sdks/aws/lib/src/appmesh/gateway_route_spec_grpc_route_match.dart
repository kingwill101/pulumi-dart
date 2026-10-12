// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayRouteSpecGrpcRouteMatch {
  /// Port number to match from the request.
  final pulumi.Input<int?>? port;
  /// Fully qualified domain name for the service to match from the request.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GatewayRouteSpecGrpcRouteMatch].
  /// [port] Port number to match from the request.
  /// [serviceName] Fully qualified domain name for the service to match from the request.
  const GatewayRouteSpecGrpcRouteMatch({
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
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
