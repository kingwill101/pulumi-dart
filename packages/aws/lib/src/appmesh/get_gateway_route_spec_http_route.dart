// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http_route_action.dart';
import 'get_gateway_route_spec_http_route_match.dart';

class GetGatewayRouteSpecHttpRoute {
  final List<GetGatewayRouteSpecHttpRouteAction> actions;
  final List<GetGatewayRouteSpecHttpRouteMatch> matches;

  /// Creates a new [GetGatewayRouteSpecHttpRoute].
  /// [actions] Required.
  /// [matches] Required.
  GetGatewayRouteSpecHttpRoute({
    required this.actions,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = pulumi.Input.encodeList<GetGatewayRouteSpecHttpRouteAction,
        Map<String, dynamic>>(actions, (value) => value.toMap());
    map['matches'] = pulumi.Input.encodeList<GetGatewayRouteSpecHttpRouteMatch,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    return map;
  }

  factory GetGatewayRouteSpecHttpRoute.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRoute(
      actions: pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteAction>(
          map['actions'],
          (value) => GetGatewayRouteSpecHttpRouteAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      matches: pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteMatch>(
          map['matches'],
          (value) => GetGatewayRouteSpecHttpRouteMatch.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
