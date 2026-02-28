// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_route_spec_http_route_match_query_parameter_match.dart';

class GatewayRouteSpecHttpRouteMatchQueryParameter {
  /// The query parameter to match on.
  final GatewayRouteSpecHttpRouteMatchQueryParameterMatch? match;

  /// Name for the query parameter that will be matched on.
  final String name;

  /// Creates a new [GatewayRouteSpecHttpRouteMatchQueryParameter].
  /// [match] The query parameter to match on.
  /// [name] Name for the query parameter that will be matched on.
  GatewayRouteSpecHttpRouteMatchQueryParameter({
    this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final matchValue = match;
    if (matchValue != null) {
      map['match'] = matchValue.toMap();
    }
    map['name'] = name;
    return map;
  }

  factory GatewayRouteSpecHttpRouteMatchQueryParameter.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteMatchQueryParameter(
      match: map['match'] == null
          ? null
          : GatewayRouteSpecHttpRouteMatchQueryParameterMatch.fromMap(
              (map['match'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
