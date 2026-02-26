// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_gateway_route_spec_grpc_route_action/get_gateway_route_spec_grpc_route_action.dart';
import '../get_gateway_route_spec_grpc_route_match/get_gateway_route_spec_grpc_route_match.dart';

class GetGatewayRouteSpecGrpcRoute {
  final List<GetGatewayRouteSpecGrpcRouteAction> actions;
  final List<GetGatewayRouteSpecGrpcRouteMatch> matches;

  GetGatewayRouteSpecGrpcRoute({
    required this.actions,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = Input.encodeList<GetGatewayRouteSpecGrpcRouteAction,
        Map<String, dynamic>>(actions, (value) => value.toMap());
    map['matches'] = Input.encodeList<GetGatewayRouteSpecGrpcRouteMatch,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    return map;
  }

  factory GetGatewayRouteSpecGrpcRoute.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecGrpcRoute(
      actions: Input.decodeList<GetGatewayRouteSpecGrpcRouteAction>(
          map['actions'],
          (value) => GetGatewayRouteSpecGrpcRouteAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      matches: Input.decodeList<GetGatewayRouteSpecGrpcRouteMatch>(
          map['matches'],
          (value) => GetGatewayRouteSpecGrpcRouteMatch.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
