// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http_route_match_query_parameter_match.dart';

class GetRouteSpecHttpRouteMatchQueryParameter {
  final pulumi.Input<List<GetRouteSpecHttpRouteMatchQueryParameterMatch>> matches;
  /// Name of the route.
  final pulumi.Input<String> name;

  /// Creates a new [GetRouteSpecHttpRouteMatchQueryParameter].
  /// [matches] Required.
  /// [name] Name of the route.
  const GetRouteSpecHttpRouteMatchQueryParameter({
    required this.matches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matches': pulumi.Input.mapInputValue<List<GetRouteSpecHttpRouteMatchQueryParameterMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetRouteSpecHttpRouteMatchQueryParameterMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory GetRouteSpecHttpRouteMatchQueryParameter.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteMatchQueryParameter(
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteSpecHttpRouteMatchQueryParameterMatch>(map['matches']!, (value) => GetRouteSpecHttpRouteMatchQueryParameterMatch.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

