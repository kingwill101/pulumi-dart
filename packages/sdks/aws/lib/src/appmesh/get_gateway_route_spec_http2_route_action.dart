// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http2_route_action_rewrite.dart';
import 'get_gateway_route_spec_http2_route_action_target.dart';

class GetGatewayRouteSpecHttp2RouteAction {
  final pulumi.Input<List<GetGatewayRouteSpecHttp2RouteActionRewrite>> rewrites;
  final pulumi.Input<List<GetGatewayRouteSpecHttp2RouteActionTarget>> targets;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteAction].
  /// [rewrites] Required.
  /// [targets] Required.
  GetGatewayRouteSpecHttp2RouteAction({
    required this.rewrites,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rewrites': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttp2RouteActionRewrite>, List<Map<String, dynamic>>>(rewrites, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttp2RouteActionRewrite, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targets': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttp2RouteActionTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttp2RouteActionTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGatewayRouteSpecHttp2RouteAction.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteAction(
      rewrites: (pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteActionRewrite>(map['rewrites'], (value) => GetGatewayRouteSpecHttp2RouteActionRewrite.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targets: (pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteActionTarget>(map['targets'], (value) => GetGatewayRouteSpecHttp2RouteActionTarget.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

