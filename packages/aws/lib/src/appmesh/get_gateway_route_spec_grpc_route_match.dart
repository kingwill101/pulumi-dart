// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecGrpcRouteMatch {
  final int port;
  final String serviceName;

  /// Creates a new [GetGatewayRouteSpecGrpcRouteMatch].
  /// [port] Required.
  /// [serviceName] Required.
  GetGatewayRouteSpecGrpcRouteMatch({
    required this.port,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'port': port, 'serviceName': serviceName};
  }

  factory GetGatewayRouteSpecGrpcRouteMatch.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecGrpcRouteMatch(
      port: map['port'] as int,
      serviceName: map['serviceName'] as String,
    );
  }
}
