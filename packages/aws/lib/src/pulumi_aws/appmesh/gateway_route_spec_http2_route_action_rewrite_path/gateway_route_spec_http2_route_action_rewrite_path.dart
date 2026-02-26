// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecHttp2RouteActionRewritePath {
  /// The exact path to match on.
  final String exact;

  GatewayRouteSpecHttp2RouteActionRewritePath({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exact'] = exact;
    return map;
  }

  factory GatewayRouteSpecHttp2RouteActionRewritePath.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteActionRewritePath(
      exact: map['exact'] as String,
    );
  }
}
