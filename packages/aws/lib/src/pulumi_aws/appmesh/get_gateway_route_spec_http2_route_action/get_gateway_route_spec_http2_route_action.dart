// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_gateway_route_spec_http2_route_action_rewrite/get_gateway_route_spec_http2_route_action_rewrite.dart';
import '../get_gateway_route_spec_http2_route_action_target/get_gateway_route_spec_http2_route_action_target.dart';

class GetGatewayRouteSpecHttp2RouteAction {
  final List<GetGatewayRouteSpecHttp2RouteActionRewrite> rewrites;
  final List<GetGatewayRouteSpecHttp2RouteActionTarget> targets;

  GetGatewayRouteSpecHttp2RouteAction({
    required this.rewrites,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rewrites'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttp2RouteActionRewrite,
        Map<String, dynamic>>(rewrites, (value) => value.toMap());
    map['targets'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttp2RouteActionTarget,
        Map<String, dynamic>>(targets, (value) => value.toMap());
    return map;
  }

  factory GetGatewayRouteSpecHttp2RouteAction.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteAction(
      rewrites:
          pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteActionRewrite>(
              map['rewrites'],
              (value) => GetGatewayRouteSpecHttp2RouteActionRewrite.fromMap(
                  (value as Map).cast<String, dynamic>())),
      targets:
          pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteActionTarget>(
              map['targets'],
              (value) => GetGatewayRouteSpecHttp2RouteActionTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
