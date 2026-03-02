// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http2_route_action.dart';
import 'gateway_route_spec_http2_route_match.dart';

class GatewayRouteSpecHttp2Route {
  /// Action to take if a match is determined.
  final pulumi.Input<GatewayRouteSpecHttp2RouteAction> action;
  /// Criteria for determining a request match.
  final pulumi.Input<GatewayRouteSpecHttp2RouteMatch> match;

  /// Creates a new [GatewayRouteSpecHttp2Route].
  /// [action] Action to take if a match is determined.
  /// [match] Criteria for determining a request match.
  GatewayRouteSpecHttp2Route({
    required this.action,
    required this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<GatewayRouteSpecHttp2RouteAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'match': pulumi.Input.mapInputValue<GatewayRouteSpecHttp2RouteMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
    };
  }

  factory GatewayRouteSpecHttp2Route.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2Route(
      action: (GatewayRouteSpecHttp2RouteAction.fromMap((map['action']! as Map).cast<String, dynamic>())).input(),
      match: (GatewayRouteSpecHttp2RouteMatch.fromMap((map['match']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

