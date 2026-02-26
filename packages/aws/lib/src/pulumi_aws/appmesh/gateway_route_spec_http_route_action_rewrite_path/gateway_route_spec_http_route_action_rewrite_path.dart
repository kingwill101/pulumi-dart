// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecHttpRouteActionRewritePath {
  /// The exact path to match on.
  final String exact;

  GatewayRouteSpecHttpRouteActionRewritePath({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exact'] = exact;
    return map;
  }

  factory GatewayRouteSpecHttpRouteActionRewritePath.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteActionRewritePath(
      exact: map['exact'] as String,
    );
  }
}
