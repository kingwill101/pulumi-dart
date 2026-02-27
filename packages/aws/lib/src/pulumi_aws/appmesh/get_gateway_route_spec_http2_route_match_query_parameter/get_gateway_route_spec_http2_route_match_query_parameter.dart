// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_gateway_route_spec_http2_route_match_query_parameter_match/get_gateway_route_spec_http2_route_match_query_parameter_match.dart';

class GetGatewayRouteSpecHttp2RouteMatchQueryParameter {
  final List<GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch> matches;

  /// Name of the gateway route.
  final String name;

  GetGatewayRouteSpecHttp2RouteMatchQueryParameter({
    required this.matches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['matches'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    map['name'] = name;
    return map;
  }

  factory GetGatewayRouteSpecHttp2RouteMatchQueryParameter.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatchQueryParameter(
      matches: pulumi.Input.decodeList<
              GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch>(
          map['matches'],
          (value) =>
              GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
