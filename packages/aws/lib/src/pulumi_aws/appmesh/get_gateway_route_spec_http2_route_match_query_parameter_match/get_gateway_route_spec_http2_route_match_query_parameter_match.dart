// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch {
  final String exact;

  GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exact'] = exact;
    return map;
  }

  factory GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch(
      exact: map['exact'] as String,
    );
  }
}
