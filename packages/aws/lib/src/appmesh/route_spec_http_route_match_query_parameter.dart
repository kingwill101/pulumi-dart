// ignore_for_file: unused_element, unnecessary_cast

import 'route_spec_http_route_match_query_parameter_match.dart';

class RouteSpecHttpRouteMatchQueryParameter {
  /// The query parameter to match on.
  final RouteSpecHttpRouteMatchQueryParameterMatch? match;
  /// Name for the query parameter that will be matched on.
  final String name;

  /// Creates a new [RouteSpecHttpRouteMatchQueryParameter].
  /// [match] The query parameter to match on.
  /// [name] Name for the query parameter that will be matched on.
  RouteSpecHttpRouteMatchQueryParameter({
    this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': ?match == null ? null : match!.toMap(),
      'name': name,
    };
  }

  factory RouteSpecHttpRouteMatchQueryParameter.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRouteMatchQueryParameter(
      match: map['match'] == null ? null : RouteSpecHttpRouteMatchQueryParameterMatch.fromMap((map['match'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

