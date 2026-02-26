// ignore_for_file: unused_element, unnecessary_cast

import '../gateway_route_spec_http2_route_match_query_parameter_match/gateway_route_spec_http2_route_match_query_parameter_match.dart';

class GatewayRouteSpecHttp2RouteMatchQueryParameter {
  /// The query parameter to match on.
  final GatewayRouteSpecHttp2RouteMatchQueryParameterMatch? match;

  /// Name for the query parameter that will be matched on.
  final String name;

  GatewayRouteSpecHttp2RouteMatchQueryParameter({
    this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final matchValue = match;
    if (matchValue != null) {
      map['match'] = matchValue.toMap();
    }
    map['name'] = name;
    return map;
  }

  factory GatewayRouteSpecHttp2RouteMatchQueryParameter.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteMatchQueryParameter(
      match: map['match'] == null
          ? null
          : GatewayRouteSpecHttp2RouteMatchQueryParameterMatch.fromMap(
              (map['match'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
