// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecHttpRouteActionRewriteHostname {
  final String defaultTargetHostname;

  /// Creates a new [GetGatewayRouteSpecHttpRouteActionRewriteHostname].
  /// [defaultTargetHostname] Required.
  GetGatewayRouteSpecHttpRouteActionRewriteHostname({
    required this.defaultTargetHostname,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultTargetHostname'] = defaultTargetHostname;
    return map;
  }

  factory GetGatewayRouteSpecHttpRouteActionRewriteHostname.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteActionRewriteHostname(
      defaultTargetHostname: map['defaultTargetHostname'] as String,
    );
  }
}
