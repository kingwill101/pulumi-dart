// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http_route_action.dart';
import 'get_gateway_route_spec_http_route_match.dart';

class GetGatewayRouteSpecHttpRoute {
  final pulumi.Input<List<GetGatewayRouteSpecHttpRouteAction>> actions;
  final pulumi.Input<List<GetGatewayRouteSpecHttpRouteMatch>> matches;

  /// Creates a new [GetGatewayRouteSpecHttpRoute].
  /// [actions] Required.
  /// [matches] Required.
  const GetGatewayRouteSpecHttpRoute({
    required this.actions,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttpRouteAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttpRouteAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matches': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttpRouteMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttpRouteMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGatewayRouteSpecHttpRoute.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRoute(
      actions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteAction>(map['actions']!, (value) => GetGatewayRouteSpecHttpRouteAction.fromMap((value as Map).cast<String, dynamic>()))),
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteMatch>(map['matches']!, (value) => GetGatewayRouteSpecHttpRouteMatch.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
