// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http_route_action_rewrite_hostname.dart';
import 'get_gateway_route_spec_http_route_action_rewrite_path.dart';
import 'get_gateway_route_spec_http_route_action_rewrite_prefix.dart';

class GetGatewayRouteSpecHttpRouteActionRewrite {
  final pulumi.Input<List<GetGatewayRouteSpecHttpRouteActionRewriteHostname>> hostnames;
  final pulumi.Input<List<GetGatewayRouteSpecHttpRouteActionRewritePath>> paths;
  final pulumi.Input<List<GetGatewayRouteSpecHttpRouteActionRewritePrefix>> prefixes;

  /// Creates a new [GetGatewayRouteSpecHttpRouteActionRewrite].
  /// [hostnames] Required.
  /// [paths] Required.
  /// [prefixes] Required.
  GetGatewayRouteSpecHttpRouteActionRewrite({
    required this.hostnames,
    required this.paths,
    required this.prefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttpRouteActionRewriteHostname>, List<Map<String, dynamic>>>(hostnames, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttpRouteActionRewriteHostname, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paths': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttpRouteActionRewritePath>, List<Map<String, dynamic>>>(paths, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttpRouteActionRewritePath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefixes': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttpRouteActionRewritePrefix>, List<Map<String, dynamic>>>(prefixes, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttpRouteActionRewritePrefix, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGatewayRouteSpecHttpRouteActionRewrite.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteActionRewrite(
      hostnames: (pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteActionRewriteHostname>(map['hostnames'], (value) => GetGatewayRouteSpecHttpRouteActionRewriteHostname.fromMap((value as Map).cast<String, dynamic>()))).input(),
      paths: (pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteActionRewritePath>(map['paths'], (value) => GetGatewayRouteSpecHttpRouteActionRewritePath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      prefixes: (pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteActionRewritePrefix>(map['prefixes'], (value) => GetGatewayRouteSpecHttpRouteActionRewritePrefix.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

