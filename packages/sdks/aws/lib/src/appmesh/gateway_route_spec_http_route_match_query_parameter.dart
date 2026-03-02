// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http_route_match_query_parameter_match.dart';

class GatewayRouteSpecHttpRouteMatchQueryParameter {
  /// The query parameter to match on.
  final pulumi.Input<GatewayRouteSpecHttpRouteMatchQueryParameterMatch>? match;
  /// Name for the query parameter that will be matched on.
  final pulumi.Input<String> name;

  /// Creates a new [GatewayRouteSpecHttpRouteMatchQueryParameter].
  /// [match] The query parameter to match on.
  /// [name] Name for the query parameter that will be matched on.
  GatewayRouteSpecHttpRouteMatchQueryParameter({
    this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttpRouteMatchQueryParameterMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GatewayRouteSpecHttpRouteMatchQueryParameter.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteMatchQueryParameter(
      match: map['match'] == null ? null : ((GatewayRouteSpecHttpRouteMatchQueryParameterMatch.fromMap((map['match']! as Map).cast<String, dynamic>())).input()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

