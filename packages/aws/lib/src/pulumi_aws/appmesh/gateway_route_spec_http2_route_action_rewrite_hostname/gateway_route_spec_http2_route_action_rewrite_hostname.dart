// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecHttp2RouteActionRewriteHostname {
  /// Default target host name to write to. Valid values: `ENABLED`, `DISABLED`.
  final String defaultTargetHostname;

  GatewayRouteSpecHttp2RouteActionRewriteHostname({
    required this.defaultTargetHostname,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultTargetHostname'] = defaultTargetHostname;
    return map;
  }

  factory GatewayRouteSpecHttp2RouteActionRewriteHostname.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteActionRewriteHostname(
      defaultTargetHostname: map['defaultTargetHostname'] as String,
    );
  }
}
