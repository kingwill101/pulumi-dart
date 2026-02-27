// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_gateway_route_spec_http_route_action_rewrite_hostname/get_gateway_route_spec_http_route_action_rewrite_hostname.dart';
import '../get_gateway_route_spec_http_route_action_rewrite_path/get_gateway_route_spec_http_route_action_rewrite_path.dart';
import '../get_gateway_route_spec_http_route_action_rewrite_prefix/get_gateway_route_spec_http_route_action_rewrite_prefix.dart';

class GetGatewayRouteSpecHttpRouteActionRewrite {
  final List<GetGatewayRouteSpecHttpRouteActionRewriteHostname> hostnames;
  final List<GetGatewayRouteSpecHttpRouteActionRewritePath> paths;
  final List<GetGatewayRouteSpecHttpRouteActionRewritePrefix> prefixes;

  GetGatewayRouteSpecHttpRouteActionRewrite({
    required this.hostnames,
    required this.paths,
    required this.prefixes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostnames'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttpRouteActionRewriteHostname,
        Map<String, dynamic>>(hostnames, (value) => value.toMap());
    map['paths'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttpRouteActionRewritePath,
        Map<String, dynamic>>(paths, (value) => value.toMap());
    map['prefixes'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttpRouteActionRewritePrefix,
        Map<String, dynamic>>(prefixes, (value) => value.toMap());
    return map;
  }

  factory GetGatewayRouteSpecHttpRouteActionRewrite.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteActionRewrite(
      hostnames: pulumi.Input.decodeList<
              GetGatewayRouteSpecHttpRouteActionRewriteHostname>(
          map['hostnames'],
          (value) => GetGatewayRouteSpecHttpRouteActionRewriteHostname.fromMap(
              (value as Map).cast<String, dynamic>())),
      paths: pulumi.Input.decodeList<
              GetGatewayRouteSpecHttpRouteActionRewritePath>(
          map['paths'],
          (value) => GetGatewayRouteSpecHttpRouteActionRewritePath.fromMap(
              (value as Map).cast<String, dynamic>())),
      prefixes: pulumi.Input.decodeList<
              GetGatewayRouteSpecHttpRouteActionRewritePrefix>(
          map['prefixes'],
          (value) => GetGatewayRouteSpecHttpRouteActionRewritePrefix.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
