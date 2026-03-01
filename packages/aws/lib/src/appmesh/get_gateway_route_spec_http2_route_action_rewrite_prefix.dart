// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecHttp2RouteActionRewritePrefix {
  final String defaultPrefix;
  final String value;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteActionRewritePrefix].
  /// [defaultPrefix] Required.
  /// [value] Required.
  GetGatewayRouteSpecHttp2RouteActionRewritePrefix({
    required this.defaultPrefix,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'defaultPrefix': defaultPrefix, 'value': value};
  }

  factory GetGatewayRouteSpecHttp2RouteActionRewritePrefix.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGatewayRouteSpecHttp2RouteActionRewritePrefix(
      defaultPrefix: map['defaultPrefix'] as String,
      value: map['value'] as String,
    );
  }
}
