// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecHttpRouteActionRewriteHostname {
  /// Default target host name to write to. Valid values: `ENABLED`, `DISABLED`.
  final String defaultTargetHostname;

  /// Creates a new [GatewayRouteSpecHttpRouteActionRewriteHostname].
  /// [defaultTargetHostname] Default target host name to write to. Valid values: `ENABLED`, `DISABLED`.
  GatewayRouteSpecHttpRouteActionRewriteHostname({
    required this.defaultTargetHostname,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultTargetHostname'] = defaultTargetHostname;
    return map;
  }

  factory GatewayRouteSpecHttpRouteActionRewriteHostname.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteActionRewriteHostname(
      defaultTargetHostname: map['defaultTargetHostname'] as String,
    );
  }
}
