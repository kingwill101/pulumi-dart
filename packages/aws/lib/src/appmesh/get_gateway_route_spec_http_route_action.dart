// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http_route_action_rewrite.dart';
import 'get_gateway_route_spec_http_route_action_target.dart';

class GetGatewayRouteSpecHttpRouteAction {
  final List<GetGatewayRouteSpecHttpRouteActionRewrite> rewrites;
  final List<GetGatewayRouteSpecHttpRouteActionTarget> targets;

  /// Creates a new [GetGatewayRouteSpecHttpRouteAction].
  /// [rewrites] Required.
  /// [targets] Required.
  GetGatewayRouteSpecHttpRouteAction({
    required this.rewrites,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rewrites'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttpRouteActionRewrite,
        Map<String, dynamic>>(rewrites, (value) => value.toMap());
    map['targets'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttpRouteActionTarget,
        Map<String, dynamic>>(targets, (value) => value.toMap());
    return map;
  }

  factory GetGatewayRouteSpecHttpRouteAction.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteAction(
      rewrites:
          pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteActionRewrite>(
              map['rewrites'],
              (value) => GetGatewayRouteSpecHttpRouteActionRewrite.fromMap(
                  (value as Map).cast<String, dynamic>())),
      targets:
          pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteActionTarget>(
              map['targets'],
              (value) => GetGatewayRouteSpecHttpRouteActionTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
