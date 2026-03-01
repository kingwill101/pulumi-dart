// ignore_for_file: unused_element, unnecessary_cast


class GetGatewayRouteSpecHttp2RouteMatchHostname {
  final String exact;
  final String suffix;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteMatchHostname].
  /// [exact] Required.
  /// [suffix] Required.
  GetGatewayRouteSpecHttp2RouteMatchHostname({
    required this.exact,
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
      'suffix': suffix,
    };
  }

  factory GetGatewayRouteSpecHttp2RouteMatchHostname.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatchHostname(
      exact: map['exact'] as String,
      suffix: map['suffix'] as String,
    );
  }
}

