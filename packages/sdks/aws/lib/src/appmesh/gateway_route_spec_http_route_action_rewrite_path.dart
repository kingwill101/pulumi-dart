// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayRouteSpecHttpRouteActionRewritePath {
  /// The exact path to match on.
  final pulumi.Input<String> exact;

  /// Creates a new [GatewayRouteSpecHttpRouteActionRewritePath].
  /// [exact] The exact path to match on.
  const GatewayRouteSpecHttpRouteActionRewritePath({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
    };
  }

  factory GatewayRouteSpecHttpRouteActionRewritePath.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteActionRewritePath(
      exact: pulumi.Input.fromValue(map['exact'] as String),
    );
  }
}

