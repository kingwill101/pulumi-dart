// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteSpecTcpRouteMatch {
  final pulumi.Input<int>? port;

  /// Creates a new [RouteSpecTcpRouteMatch].
  /// [port] Optional.
  RouteSpecTcpRouteMatch({
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
    };
  }

  factory RouteSpecTcpRouteMatch.fromMap(Map<String, dynamic> map) {
    return RouteSpecTcpRouteMatch(
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
    );
  }
}

