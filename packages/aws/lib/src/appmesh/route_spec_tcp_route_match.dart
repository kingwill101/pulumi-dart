// ignore_for_file: unused_element, unnecessary_cast

class RouteSpecTcpRouteMatch {
  final int? port;

  /// Creates a new [RouteSpecTcpRouteMatch].
  /// [port] Optional.
  RouteSpecTcpRouteMatch({
    this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    return map;
  }

  factory RouteSpecTcpRouteMatch.fromMap(Map<String, dynamic> map) {
    return RouteSpecTcpRouteMatch(
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}
