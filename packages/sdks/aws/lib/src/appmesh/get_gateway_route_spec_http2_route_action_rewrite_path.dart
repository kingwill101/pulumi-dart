// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecHttp2RouteActionRewritePath {
  final pulumi.Input<String> exact;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteActionRewritePath].
  /// [exact] Required.
  GetGatewayRouteSpecHttp2RouteActionRewritePath({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
    };
  }

  factory GetGatewayRouteSpecHttp2RouteActionRewritePath.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteActionRewritePath(
      exact: (map['exact'] as String).input(),
    );
  }
}

