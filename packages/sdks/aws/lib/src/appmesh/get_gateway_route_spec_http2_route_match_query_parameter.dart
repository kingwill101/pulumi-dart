// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http2_route_match_query_parameter_match.dart';

class GetGatewayRouteSpecHttp2RouteMatchQueryParameter {
  final pulumi.Input<List<GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch>> matches;
  /// Name of the gateway route.
  final pulumi.Input<String> name;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteMatchQueryParameter].
  /// [matches] Required.
  /// [name] Name of the gateway route.
  const GetGatewayRouteSpecHttp2RouteMatchQueryParameter({
    required this.matches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matches': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory GetGatewayRouteSpecHttp2RouteMatchQueryParameter.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatchQueryParameter(
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch>(map['matches']!, (value) => GetGatewayRouteSpecHttp2RouteMatchQueryParameterMatch.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
