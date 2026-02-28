// ignore_for_file: unused_element, unnecessary_cast


class GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch {
  final String exact;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch].
  /// [exact] Required.
  GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
    };
  }

  factory GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch(
      exact: map['exact'] as String,
    );
  }
}

