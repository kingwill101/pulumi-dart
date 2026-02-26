// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_gateway_route_spec_http_route_action_rewrite/get_gateway_route_spec_http_route_action_rewrite.dart';
import '../get_gateway_route_spec_http_route_action_target/get_gateway_route_spec_http_route_action_target.dart';

class GetGatewayRouteSpecHttpRouteAction {
  final List<GetGatewayRouteSpecHttpRouteActionRewrite> rewrites;
  final List<GetGatewayRouteSpecHttpRouteActionTarget> targets;

  GetGatewayRouteSpecHttpRouteAction({
    required this.rewrites,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rewrites'] = Input.encodeList<
        GetGatewayRouteSpecHttpRouteActionRewrite,
        Map<String, dynamic>>(rewrites, (value) => value.toMap());
    map['targets'] = Input.encodeList<GetGatewayRouteSpecHttpRouteActionTarget,
        Map<String, dynamic>>(targets, (value) => value.toMap());
    return map;
  }

  factory GetGatewayRouteSpecHttpRouteAction.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteAction(
      rewrites: Input.decodeList<GetGatewayRouteSpecHttpRouteActionRewrite>(
          map['rewrites'],
          (value) => GetGatewayRouteSpecHttpRouteActionRewrite.fromMap(
              (value as Map).cast<String, dynamic>())),
      targets: Input.decodeList<GetGatewayRouteSpecHttpRouteActionTarget>(
          map['targets'],
          (value) => GetGatewayRouteSpecHttpRouteActionTarget.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
