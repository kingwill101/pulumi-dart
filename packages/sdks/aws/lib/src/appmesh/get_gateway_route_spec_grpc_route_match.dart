// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecGrpcRouteMatch {
  final pulumi.Input<int> port;
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetGatewayRouteSpecGrpcRouteMatch].
  /// [port] Required.
  /// [serviceName] Required.
  GetGatewayRouteSpecGrpcRouteMatch({
    required this.port,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'serviceName': serviceName,
    };
  }

  factory GetGatewayRouteSpecGrpcRouteMatch.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecGrpcRouteMatch(
      port: (map['port'] as int).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

