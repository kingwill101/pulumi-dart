// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_grpc_route_action.dart';
import 'get_gateway_route_spec_grpc_route_match.dart';

class GetGatewayRouteSpecGrpcRoute {
  final List<GetGatewayRouteSpecGrpcRouteAction> actions;
  final List<GetGatewayRouteSpecGrpcRouteMatch> matches;

  /// Creates a new [GetGatewayRouteSpecGrpcRoute].
  /// [actions] Required.
  /// [matches] Required.
  GetGatewayRouteSpecGrpcRoute({
    required this.actions,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = pulumi.Input.encodeList<GetGatewayRouteSpecGrpcRouteAction,
        Map<String, dynamic>>(actions, (value) => value.toMap());
    map['matches'] = pulumi.Input.encodeList<GetGatewayRouteSpecGrpcRouteMatch,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    return map;
  }

  factory GetGatewayRouteSpecGrpcRoute.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecGrpcRoute(
      actions: pulumi.Input.decodeList<GetGatewayRouteSpecGrpcRouteAction>(
          map['actions'],
          (value) => GetGatewayRouteSpecGrpcRouteAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      matches: pulumi.Input.decodeList<GetGatewayRouteSpecGrpcRouteMatch>(
          map['matches'],
          (value) => GetGatewayRouteSpecGrpcRouteMatch.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
