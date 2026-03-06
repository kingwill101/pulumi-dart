// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteSpecTcpRouteMatch {
  final pulumi.Input<int>? port;

  /// Creates a new [RouteSpecTcpRouteMatch].
  /// [port] Optional.
  const RouteSpecTcpRouteMatch({
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
    };
  }

  factory RouteSpecTcpRouteMatch.fromMap(Map<String, dynamic> map) {
    return RouteSpecTcpRouteMatch(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

