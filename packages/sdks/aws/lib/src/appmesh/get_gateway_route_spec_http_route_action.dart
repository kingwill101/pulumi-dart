// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http_route_action_rewrite.dart';
import 'get_gateway_route_spec_http_route_action_target.dart';

class GetGatewayRouteSpecHttpRouteAction {
  final pulumi.Input<List<GetGatewayRouteSpecHttpRouteActionRewrite>> rewrites;
  final pulumi.Input<List<GetGatewayRouteSpecHttpRouteActionTarget>> targets;

  /// Creates a new [GetGatewayRouteSpecHttpRouteAction].
  /// [rewrites] Required.
  /// [targets] Required.
  const GetGatewayRouteSpecHttpRouteAction({
    required this.rewrites,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rewrites': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttpRouteActionRewrite>, List<Map<String, dynamic>>>(rewrites, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttpRouteActionRewrite, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targets': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttpRouteActionTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttpRouteActionTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGatewayRouteSpecHttpRouteAction.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteAction(
      rewrites: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteActionRewrite>(map['rewrites']!, (value) => GetGatewayRouteSpecHttpRouteActionRewrite.fromMap((value as Map).cast<String, dynamic>()))),
      targets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteActionTarget>(map['targets']!, (value) => GetGatewayRouteSpecHttpRouteActionTarget.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

