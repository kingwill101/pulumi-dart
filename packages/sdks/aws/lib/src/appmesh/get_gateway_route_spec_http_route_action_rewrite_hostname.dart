// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecHttpRouteActionRewriteHostname {
  final pulumi.Input<String> defaultTargetHostname;

  /// Creates a new [GetGatewayRouteSpecHttpRouteActionRewriteHostname].
  /// [defaultTargetHostname] Required.
  const GetGatewayRouteSpecHttpRouteActionRewriteHostname({
    required this.defaultTargetHostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultTargetHostname': defaultTargetHostname,
    };
  }

  factory GetGatewayRouteSpecHttpRouteActionRewriteHostname.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteActionRewriteHostname(
      defaultTargetHostname: pulumi.Input.fromValue(map['defaultTargetHostname'] as String),
    );
  }
}
