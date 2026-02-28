// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecHttp2RouteActionRewritePath {
  final String exact;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteActionRewritePath].
  /// [exact] Required.
  GetGatewayRouteSpecHttp2RouteActionRewritePath({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exact'] = exact;
    return map;
  }

  factory GetGatewayRouteSpecHttp2RouteActionRewritePath.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteActionRewritePath(
      exact: map['exact'] as String,
    );
  }
}
