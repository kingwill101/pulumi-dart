// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecHttp2RouteActionRewriteHostname {
  final String defaultTargetHostname;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteActionRewriteHostname].
  /// [defaultTargetHostname] Required.
  GetGatewayRouteSpecHttp2RouteActionRewriteHostname({
    required this.defaultTargetHostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'defaultTargetHostname': defaultTargetHostname};
  }

  factory GetGatewayRouteSpecHttp2RouteActionRewriteHostname.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGatewayRouteSpecHttp2RouteActionRewriteHostname(
      defaultTargetHostname: map['defaultTargetHostname'] as String,
    );
  }
}
