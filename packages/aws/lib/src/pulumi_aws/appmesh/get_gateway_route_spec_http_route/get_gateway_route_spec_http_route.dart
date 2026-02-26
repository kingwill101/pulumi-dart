// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_gateway_route_spec_http_route_action/get_gateway_route_spec_http_route_action.dart';
import '../get_gateway_route_spec_http_route_match/get_gateway_route_spec_http_route_match.dart';

class GetGatewayRouteSpecHttpRoute {
  final List<GetGatewayRouteSpecHttpRouteAction> actions;
  final List<GetGatewayRouteSpecHttpRouteMatch> matches;

  GetGatewayRouteSpecHttpRoute({
    required this.actions,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = Input.encodeList<GetGatewayRouteSpecHttpRouteAction,
        Map<String, dynamic>>(actions, (value) => value.toMap());
    map['matches'] = Input.encodeList<GetGatewayRouteSpecHttpRouteMatch,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    return map;
  }

  factory GetGatewayRouteSpecHttpRoute.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRoute(
      actions: Input.decodeList<GetGatewayRouteSpecHttpRouteAction>(
          map['actions'],
          (value) => GetGatewayRouteSpecHttpRouteAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      matches: Input.decodeList<GetGatewayRouteSpecHttpRouteMatch>(
          map['matches'],
          (value) => GetGatewayRouteSpecHttpRouteMatch.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
