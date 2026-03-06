// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http2_route_match_query_parameter_match.dart';

class GatewayRouteSpecHttp2RouteMatchQueryParameter {
  /// The query parameter to match on.
  final pulumi.Input<GatewayRouteSpecHttp2RouteMatchQueryParameterMatch>? match;
  /// Name for the query parameter that will be matched on.
  final pulumi.Input<String> name;

  /// Creates a new [GatewayRouteSpecHttp2RouteMatchQueryParameter].
  /// [match] The query parameter to match on.
  /// [name] Name for the query parameter that will be matched on.
  const GatewayRouteSpecHttp2RouteMatchQueryParameter({
    this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttp2RouteMatchQueryParameterMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GatewayRouteSpecHttp2RouteMatchQueryParameter.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteMatchQueryParameter(
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayRouteSpecHttp2RouteMatchQueryParameterMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

