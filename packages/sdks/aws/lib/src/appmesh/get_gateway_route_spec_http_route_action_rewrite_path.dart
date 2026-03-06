// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecHttpRouteActionRewritePath {
  final pulumi.Input<String> exact;

  /// Creates a new [GetGatewayRouteSpecHttpRouteActionRewritePath].
  /// [exact] Required.
  const GetGatewayRouteSpecHttpRouteActionRewritePath({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
    };
  }

  factory GetGatewayRouteSpecHttpRouteActionRewritePath.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteActionRewritePath(
      exact: pulumi.Input.fromValue(map['exact'] as String),
    );
  }
}

