// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayRouteSpecHttp2RouteActionRewritePath {
  /// The exact path to match on.
  final pulumi.Input<String> exact;

  /// Creates a new [GatewayRouteSpecHttp2RouteActionRewritePath].
  /// [exact] The exact path to match on.
  const GatewayRouteSpecHttp2RouteActionRewritePath({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
    };
  }

  factory GatewayRouteSpecHttp2RouteActionRewritePath.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteActionRewritePath(
      exact: pulumi.Input.fromValue(map['exact'] as String),
    );
  }
}

