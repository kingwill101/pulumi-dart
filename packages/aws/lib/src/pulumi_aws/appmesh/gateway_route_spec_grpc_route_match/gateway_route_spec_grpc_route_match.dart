// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecGrpcRouteMatch {
  /// The port number to match from the request.
  final int? port;

  /// Fully qualified domain name for the service to match from the request.
  final String serviceName;

  GatewayRouteSpecGrpcRouteMatch({
    this.port,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    map['serviceName'] = serviceName;
    return map;
  }

  factory GatewayRouteSpecGrpcRouteMatch.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecGrpcRouteMatch(
      port: map['port'] == null ? null : map['port'] as int,
      serviceName: map['serviceName'] as String,
    );
  }
}
