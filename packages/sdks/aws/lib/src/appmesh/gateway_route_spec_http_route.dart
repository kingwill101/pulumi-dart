// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http_route_action.dart';
import 'gateway_route_spec_http_route_match.dart';

class GatewayRouteSpecHttpRoute {
  /// Action to take if a match is determined.
  final pulumi.Input<GatewayRouteSpecHttpRouteAction> action;
  /// Criteria for determining a request match.
  final pulumi.Input<GatewayRouteSpecHttpRouteMatch> match;

  /// Creates a new [GatewayRouteSpecHttpRoute].
  /// [action] Action to take if a match is determined.
  /// [match] Criteria for determining a request match.
  GatewayRouteSpecHttpRoute({
    required this.action,
    required this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<GatewayRouteSpecHttpRouteAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'match': pulumi.Input.mapInputValue<GatewayRouteSpecHttpRouteMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
    };
  }

  factory GatewayRouteSpecHttpRoute.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRoute(
      action: (GatewayRouteSpecHttpRouteAction.fromMap((map['action']! as Map).cast<String, dynamic>())).input(),
      match: (GatewayRouteSpecHttpRouteMatch.fromMap((map['match']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

