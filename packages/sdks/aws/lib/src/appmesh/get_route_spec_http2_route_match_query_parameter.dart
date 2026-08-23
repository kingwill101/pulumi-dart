// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http2_route_match_query_parameter_match.dart';

class GetRouteSpecHttp2RouteMatchQueryParameter {
  final pulumi.Input<List<GetRouteSpecHttp2RouteMatchQueryParameterMatch>> matches;
  /// Name of the route.
  final pulumi.Input<String> name;

  /// Creates a new [GetRouteSpecHttp2RouteMatchQueryParameter].
  /// [matches] Required.
  /// [name] Name of the route.
  const GetRouteSpecHttp2RouteMatchQueryParameter({
    required this.matches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matches': pulumi.Input.mapInputValue<List<GetRouteSpecHttp2RouteMatchQueryParameterMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetRouteSpecHttp2RouteMatchQueryParameterMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory GetRouteSpecHttp2RouteMatchQueryParameter.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteMatchQueryParameter(
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteSpecHttp2RouteMatchQueryParameterMatch>(map['matches']!, (value) => GetRouteSpecHttp2RouteMatchQueryParameterMatch.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
