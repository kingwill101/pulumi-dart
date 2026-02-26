// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecHttp2RouteActionRewriteHostname {
  final String defaultTargetHostname;

  GetGatewayRouteSpecHttp2RouteActionRewriteHostname({
    required this.defaultTargetHostname,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultTargetHostname'] = defaultTargetHostname;
    return map;
  }

  factory GetGatewayRouteSpecHttp2RouteActionRewriteHostname.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteActionRewriteHostname(
      defaultTargetHostname: map['defaultTargetHostname'] as String,
    );
  }
}
