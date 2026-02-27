// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_route_spec_http2_route_match_query_parameter_match/get_route_spec_http2_route_match_query_parameter_match.dart';

class GetRouteSpecHttp2RouteMatchQueryParameter {
  final List<GetRouteSpecHttp2RouteMatchQueryParameterMatch> matches;

  /// Name of the route.
  final String name;

  GetRouteSpecHttp2RouteMatchQueryParameter({
    required this.matches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['matches'] = pulumi.Input.encodeList<
        GetRouteSpecHttp2RouteMatchQueryParameterMatch,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    map['name'] = name;
    return map;
  }

  factory GetRouteSpecHttp2RouteMatchQueryParameter.fromMap(
      Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteMatchQueryParameter(
      matches: pulumi.Input.decodeList<
              GetRouteSpecHttp2RouteMatchQueryParameterMatch>(
          map['matches'],
          (value) => GetRouteSpecHttp2RouteMatchQueryParameterMatch.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
