// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http2_route_match_query_parameter_match.dart';

class RouteSpecHttp2RouteMatchQueryParameter {
  /// The query parameter to match on.
  final pulumi.Input<RouteSpecHttp2RouteMatchQueryParameterMatch>? match;
  /// Name for the query parameter that will be matched on.
  final pulumi.Input<String> name;

  /// Creates a new [RouteSpecHttp2RouteMatchQueryParameter].
  /// [match] The query parameter to match on.
  /// [name] Name for the query parameter that will be matched on.
  RouteSpecHttp2RouteMatchQueryParameter({
    this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttp2RouteMatchQueryParameterMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'name': name,
    };
  }

  factory RouteSpecHttp2RouteMatchQueryParameter.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteMatchQueryParameter(
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecHttp2RouteMatchQueryParameterMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

