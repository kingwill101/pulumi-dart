// ignore_for_file: unused_element, unnecessary_cast

import 'route_spec_http2_route_match_query_parameter_match.dart';

class RouteSpecHttp2RouteMatchQueryParameter {
  /// The query parameter to match on.
  final RouteSpecHttp2RouteMatchQueryParameterMatch? match;
  /// Name for the query parameter that will be matched on.
  final String name;

  /// Creates a new [RouteSpecHttp2RouteMatchQueryParameter].
  /// [match] The query parameter to match on.
  /// [name] Name for the query parameter that will be matched on.
  RouteSpecHttp2RouteMatchQueryParameter({
    this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': ?match == null ? null : match!.toMap(),
      'name': name,
    };
  }

  factory RouteSpecHttp2RouteMatchQueryParameter.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteMatchQueryParameter(
      match: map['match'] == null ? null : RouteSpecHttp2RouteMatchQueryParameterMatch.fromMap((map['match'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

