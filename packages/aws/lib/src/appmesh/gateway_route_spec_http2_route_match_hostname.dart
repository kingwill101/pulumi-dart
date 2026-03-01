// ignore_for_file: unused_element, unnecessary_cast


class GatewayRouteSpecHttp2RouteMatchHostname {
  /// Exact host name to match on.
  final String? exact;
  /// Specified ending characters of the host name to match on.
  final String? suffix;

  /// Creates a new [GatewayRouteSpecHttp2RouteMatchHostname].
  /// [exact] Exact host name to match on.
  /// [suffix] Specified ending characters of the host name to match on.
  GatewayRouteSpecHttp2RouteMatchHostname({
    this.exact,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
      'suffix': ?suffix,
    };
  }

  factory GatewayRouteSpecHttp2RouteMatchHostname.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteMatchHostname(
      exact: map['exact'] == null ? null : map['exact'] as String,
      suffix: map['suffix'] == null ? null : map['suffix'] as String,
    );
  }
}

