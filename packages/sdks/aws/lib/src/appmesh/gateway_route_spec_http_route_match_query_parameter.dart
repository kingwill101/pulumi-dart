// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http_route_match_query_parameter_match.dart';

class GatewayRouteSpecHttpRouteMatchQueryParameter {
  final pulumi.Input<GatewayRouteSpecHttpRouteMatchQueryParameterMatch>? match;
  /// Name to use for the gateway route. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> name;

  /// Creates a new [GatewayRouteSpecHttpRouteMatchQueryParameter].
  /// [match] Optional.
  /// [name] Name to use for the gateway route. Must be between 1 and 255 characters in length.
  const GatewayRouteSpecHttpRouteMatchQueryParameter({
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
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayRouteSpecHttpRouteMatchQueryParameterMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
