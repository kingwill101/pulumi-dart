// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http_route_match_query_parameter_match.dart';

class GetGatewayRouteSpecHttpRouteMatchQueryParameter {
  final pulumi.Input<List<GetGatewayRouteSpecHttpRouteMatchQueryParameterMatch>> matches;
  /// Name of the gateway route.
  final pulumi.Input<String> name;

  /// Creates a new [GetGatewayRouteSpecHttpRouteMatchQueryParameter].
  /// [matches] Required.
  /// [name] Name of the gateway route.
  GetGatewayRouteSpecHttpRouteMatchQueryParameter({
    required this.matches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matches': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttpRouteMatchQueryParameterMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttpRouteMatchQueryParameterMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory GetGatewayRouteSpecHttpRouteMatchQueryParameter.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteMatchQueryParameter(
      matches: (pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteMatchQueryParameterMatch>(map['matches']!, (value) => GetGatewayRouteSpecHttpRouteMatchQueryParameterMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
    );
  }
}

