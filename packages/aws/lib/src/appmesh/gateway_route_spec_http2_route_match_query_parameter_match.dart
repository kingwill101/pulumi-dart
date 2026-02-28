// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecHttp2RouteMatchQueryParameterMatch {
  /// The exact query parameter to match on.
  final String? exact;

  /// Creates a new [GatewayRouteSpecHttp2RouteMatchQueryParameterMatch].
  /// [exact] The exact query parameter to match on.
  GatewayRouteSpecHttp2RouteMatchQueryParameterMatch({
    this.exact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exactValue = exact;
    if (exactValue != null) {
      map['exact'] = exactValue;
    }
    return map;
  }

  factory GatewayRouteSpecHttp2RouteMatchQueryParameterMatch.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteMatchQueryParameterMatch(
      exact: map['exact'] == null ? null : map['exact'] as String,
    );
  }
}
