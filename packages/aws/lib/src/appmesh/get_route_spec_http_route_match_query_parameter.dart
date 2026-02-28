// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http_route_match_query_parameter_match.dart';

class GetRouteSpecHttpRouteMatchQueryParameter {
  final List<GetRouteSpecHttpRouteMatchQueryParameterMatch> matches;
  /// Name of the route.
  final String name;

  /// Creates a new [GetRouteSpecHttpRouteMatchQueryParameter].
  /// [matches] Required.
  /// [name] Name of the route.
  GetRouteSpecHttpRouteMatchQueryParameter({
    required this.matches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matches': pulumi.Input.encodeList<GetRouteSpecHttpRouteMatchQueryParameterMatch, Map<String, dynamic>>(matches, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GetRouteSpecHttpRouteMatchQueryParameter.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteMatchQueryParameter(
      matches: pulumi.Input.decodeList<GetRouteSpecHttpRouteMatchQueryParameterMatch>(map['matches'], (value) => GetRouteSpecHttpRouteMatchQueryParameterMatch.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

