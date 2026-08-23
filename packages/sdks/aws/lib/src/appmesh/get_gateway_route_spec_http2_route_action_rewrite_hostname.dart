// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecHttp2RouteActionRewriteHostname {
  final pulumi.Input<String> defaultTargetHostname;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteActionRewriteHostname].
  /// [defaultTargetHostname] Required.
  const GetGatewayRouteSpecHttp2RouteActionRewriteHostname({
    required this.defaultTargetHostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultTargetHostname': defaultTargetHostname,
    };
  }

  factory GetGatewayRouteSpecHttp2RouteActionRewriteHostname.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteActionRewriteHostname(
      defaultTargetHostname: pulumi.Input.fromValue(map['defaultTargetHostname'] as String),
    );
  }
}
