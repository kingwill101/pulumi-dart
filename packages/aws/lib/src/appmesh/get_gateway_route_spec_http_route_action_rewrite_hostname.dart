// ignore_for_file: unused_element, unnecessary_cast


class GetGatewayRouteSpecHttpRouteActionRewriteHostname {
  final String defaultTargetHostname;

  /// Creates a new [GetGatewayRouteSpecHttpRouteActionRewriteHostname].
  /// [defaultTargetHostname] Required.
  GetGatewayRouteSpecHttpRouteActionRewriteHostname({
    required this.defaultTargetHostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultTargetHostname': defaultTargetHostname,
    };
  }

  factory GetGatewayRouteSpecHttpRouteActionRewriteHostname.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteActionRewriteHostname(
      defaultTargetHostname: map['defaultTargetHostname'] as String,
    );
  }
}

