// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http2_route_action.dart';
import 'get_gateway_route_spec_http2_route_match.dart';

class GetGatewayRouteSpecHttp2Route {
  final List<GetGatewayRouteSpecHttp2RouteAction> actions;
  final List<GetGatewayRouteSpecHttp2RouteMatch> matches;

  /// Creates a new [GetGatewayRouteSpecHttp2Route].
  /// [actions] Required.
  /// [matches] Required.
  GetGatewayRouteSpecHttp2Route({required this.actions, required this.matches});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions':
          pulumi.Input.encodeList<
            GetGatewayRouteSpecHttp2RouteAction,
            Map<String, dynamic>
          >(actions, (value) => value.toMap()),
      'matches':
          pulumi.Input.encodeList<
            GetGatewayRouteSpecHttp2RouteMatch,
            Map<String, dynamic>
          >(matches, (value) => value.toMap()),
    };
  }

  factory GetGatewayRouteSpecHttp2Route.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2Route(
      actions: pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteAction>(
        map['actions'],
        (value) => GetGatewayRouteSpecHttp2RouteAction.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      matches: pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteMatch>(
        map['matches'],
        (value) => GetGatewayRouteSpecHttp2RouteMatch.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
