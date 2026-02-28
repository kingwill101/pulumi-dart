// ignore_for_file: unused_element, unnecessary_cast


class GatewayRouteSpecHttpRouteActionRewritePath {
  /// The exact path to match on.
  final String exact;

  /// Creates a new [GatewayRouteSpecHttpRouteActionRewritePath].
  /// [exact] The exact path to match on.
  GatewayRouteSpecHttpRouteActionRewritePath({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
    };
  }

  factory GatewayRouteSpecHttpRouteActionRewritePath.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteActionRewritePath(
      exact: map['exact'] as String,
    );
  }
}

