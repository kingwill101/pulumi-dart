// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecHttp2RouteActionRewriteHostname {
  /// Default target host name to write to. Valid values: `ENABLED`, `DISABLED`.
  final String defaultTargetHostname;

  /// Creates a new [GatewayRouteSpecHttp2RouteActionRewriteHostname].
  /// [defaultTargetHostname] Default target host name to write to. Valid values: `ENABLED`, `DISABLED`.
  GatewayRouteSpecHttp2RouteActionRewriteHostname({
    required this.defaultTargetHostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'defaultTargetHostname': defaultTargetHostname};
  }

  factory GatewayRouteSpecHttp2RouteActionRewriteHostname.fromMap(
    Map<String, dynamic> map,
  ) {
    return GatewayRouteSpecHttp2RouteActionRewriteHostname(
      defaultTargetHostname: map['defaultTargetHostname'] as String,
    );
  }
}
