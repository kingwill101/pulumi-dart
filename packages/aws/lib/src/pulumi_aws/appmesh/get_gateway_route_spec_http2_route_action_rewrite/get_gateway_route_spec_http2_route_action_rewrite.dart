// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_gateway_route_spec_http2_route_action_rewrite_hostname/get_gateway_route_spec_http2_route_action_rewrite_hostname.dart';
import '../get_gateway_route_spec_http2_route_action_rewrite_path/get_gateway_route_spec_http2_route_action_rewrite_path.dart';
import '../get_gateway_route_spec_http2_route_action_rewrite_prefix/get_gateway_route_spec_http2_route_action_rewrite_prefix.dart';

class GetGatewayRouteSpecHttp2RouteActionRewrite {
  final List<GetGatewayRouteSpecHttp2RouteActionRewriteHostname> hostnames;
  final List<GetGatewayRouteSpecHttp2RouteActionRewritePath> paths;
  final List<GetGatewayRouteSpecHttp2RouteActionRewritePrefix> prefixes;

  GetGatewayRouteSpecHttp2RouteActionRewrite({
    required this.hostnames,
    required this.paths,
    required this.prefixes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostnames'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttp2RouteActionRewriteHostname,
        Map<String, dynamic>>(hostnames, (value) => value.toMap());
    map['paths'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttp2RouteActionRewritePath,
        Map<String, dynamic>>(paths, (value) => value.toMap());
    map['prefixes'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttp2RouteActionRewritePrefix,
        Map<String, dynamic>>(prefixes, (value) => value.toMap());
    return map;
  }

  factory GetGatewayRouteSpecHttp2RouteActionRewrite.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteActionRewrite(
      hostnames: pulumi.Input.decodeList<
              GetGatewayRouteSpecHttp2RouteActionRewriteHostname>(
          map['hostnames'],
          (value) => GetGatewayRouteSpecHttp2RouteActionRewriteHostname.fromMap(
              (value as Map).cast<String, dynamic>())),
      paths: pulumi.Input.decodeList<
              GetGatewayRouteSpecHttp2RouteActionRewritePath>(
          map['paths'],
          (value) => GetGatewayRouteSpecHttp2RouteActionRewritePath.fromMap(
              (value as Map).cast<String, dynamic>())),
      prefixes: pulumi.Input.decodeList<
              GetGatewayRouteSpecHttp2RouteActionRewritePrefix>(
          map['prefixes'],
          (value) => GetGatewayRouteSpecHttp2RouteActionRewritePrefix.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
