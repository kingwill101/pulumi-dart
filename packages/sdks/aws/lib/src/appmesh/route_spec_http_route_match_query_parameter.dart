// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http_route_match_query_parameter_match.dart';

class RouteSpecHttpRouteMatchQueryParameter {
  /// The query parameter to match on.
  final pulumi.Input<RouteSpecHttpRouteMatchQueryParameterMatch>? match;
  /// Name for the query parameter that will be matched on.
  final pulumi.Input<String> name;

  /// Creates a new [RouteSpecHttpRouteMatchQueryParameter].
  /// [match] The query parameter to match on.
  /// [name] Name for the query parameter that will be matched on.
  RouteSpecHttpRouteMatchQueryParameter({
    this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttpRouteMatchQueryParameterMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'name': name,
    };
  }

  factory RouteSpecHttpRouteMatchQueryParameter.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRouteMatchQueryParameter(
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecHttpRouteMatchQueryParameterMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

