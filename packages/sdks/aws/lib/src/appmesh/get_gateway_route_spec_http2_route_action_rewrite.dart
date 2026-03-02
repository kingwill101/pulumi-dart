// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http2_route_action_rewrite_hostname.dart';
import 'get_gateway_route_spec_http2_route_action_rewrite_path.dart';
import 'get_gateway_route_spec_http2_route_action_rewrite_prefix.dart';

class GetGatewayRouteSpecHttp2RouteActionRewrite {
  final pulumi.Input<List<GetGatewayRouteSpecHttp2RouteActionRewriteHostname>> hostnames;
  final pulumi.Input<List<GetGatewayRouteSpecHttp2RouteActionRewritePath>> paths;
  final pulumi.Input<List<GetGatewayRouteSpecHttp2RouteActionRewritePrefix>> prefixes;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteActionRewrite].
  /// [hostnames] Required.
  /// [paths] Required.
  /// [prefixes] Required.
  GetGatewayRouteSpecHttp2RouteActionRewrite({
    required this.hostnames,
    required this.paths,
    required this.prefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttp2RouteActionRewriteHostname>, List<Map<String, dynamic>>>(hostnames, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttp2RouteActionRewriteHostname, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paths': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttp2RouteActionRewritePath>, List<Map<String, dynamic>>>(paths, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttp2RouteActionRewritePath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefixes': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttp2RouteActionRewritePrefix>, List<Map<String, dynamic>>>(prefixes, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttp2RouteActionRewritePrefix, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGatewayRouteSpecHttp2RouteActionRewrite.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteActionRewrite(
      hostnames: (pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteActionRewriteHostname>(map['hostnames']!, (value) => GetGatewayRouteSpecHttp2RouteActionRewriteHostname.fromMap((value as Map).cast<String, dynamic>()))).input(),
      paths: (pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteActionRewritePath>(map['paths']!, (value) => GetGatewayRouteSpecHttp2RouteActionRewritePath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      prefixes: (pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteActionRewritePrefix>(map['prefixes']!, (value) => GetGatewayRouteSpecHttp2RouteActionRewritePrefix.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

