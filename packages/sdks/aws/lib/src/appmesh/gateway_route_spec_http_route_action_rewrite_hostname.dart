// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayRouteSpecHttpRouteActionRewriteHostname {
  /// Default target host name to write to. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> defaultTargetHostname;

  /// Creates a new [GatewayRouteSpecHttpRouteActionRewriteHostname].
  /// [defaultTargetHostname] Default target host name to write to. Valid values: `ENABLED`, `DISABLED`.
  const GatewayRouteSpecHttpRouteActionRewriteHostname({
    required this.defaultTargetHostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultTargetHostname': defaultTargetHostname,
    };
  }

  factory GatewayRouteSpecHttpRouteActionRewriteHostname.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteActionRewriteHostname(
      defaultTargetHostname: pulumi.Input.fromValue(map['defaultTargetHostname'] as String),
    );
  }
}
