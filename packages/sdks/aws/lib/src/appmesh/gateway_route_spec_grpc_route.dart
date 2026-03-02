// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_grpc_route_action.dart';
import 'gateway_route_spec_grpc_route_match.dart';

class GatewayRouteSpecGrpcRoute {
  /// Action to take if a match is determined.
  final pulumi.Input<GatewayRouteSpecGrpcRouteAction> action;
  /// Criteria for determining a request match.
  final pulumi.Input<GatewayRouteSpecGrpcRouteMatch> match;

  /// Creates a new [GatewayRouteSpecGrpcRoute].
  /// [action] Action to take if a match is determined.
  /// [match] Criteria for determining a request match.
  GatewayRouteSpecGrpcRoute({
    required this.action,
    required this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<GatewayRouteSpecGrpcRouteAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'match': pulumi.Input.mapInputValue<GatewayRouteSpecGrpcRouteMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
    };
  }

  factory GatewayRouteSpecGrpcRoute.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecGrpcRoute(
      action: (GatewayRouteSpecGrpcRouteAction.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      match: (GatewayRouteSpecGrpcRouteMatch.fromMap((map['match'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

