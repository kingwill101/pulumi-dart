// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_route_spec_http_route_action.dart';
import 'gateway_route_spec_http_route_match.dart';

class GatewayRouteSpecHttpRoute {
  /// Action to take if a match is determined.
  final GatewayRouteSpecHttpRouteAction action;
  /// Criteria for determining a request match.
  final GatewayRouteSpecHttpRouteMatch match;

  /// Creates a new [GatewayRouteSpecHttpRoute].
  /// [action] Action to take if a match is determined.
  /// [match] Criteria for determining a request match.
  GatewayRouteSpecHttpRoute({
    required this.action,
    required this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'match': match.toMap(),
    };
  }

  factory GatewayRouteSpecHttpRoute.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRoute(
      action: GatewayRouteSpecHttpRouteAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      match: GatewayRouteSpecHttpRouteMatch.fromMap((map['match'] as Map).cast<String, dynamic>()),
    );
  }
}

