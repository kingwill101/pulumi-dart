// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http2_route_action_rewrite_hostname.dart';
import 'gateway_route_spec_http2_route_action_rewrite_path.dart';
import 'gateway_route_spec_http2_route_action_rewrite_prefix.dart';

class GatewayRouteSpecHttp2RouteActionRewrite {
  /// Host name to rewrite.
  final pulumi.Input<GatewayRouteSpecHttp2RouteActionRewriteHostname>? hostname;
  /// Exact path to rewrite.
  final pulumi.Input<GatewayRouteSpecHttp2RouteActionRewritePath>? path;
  /// Specified beginning characters to rewrite.
  final pulumi.Input<GatewayRouteSpecHttp2RouteActionRewritePrefix>? prefix;

  /// Creates a new [GatewayRouteSpecHttp2RouteActionRewrite].
  /// [hostname] Host name to rewrite.
  /// [path] Exact path to rewrite.
  /// [prefix] Specified beginning characters to rewrite.
  GatewayRouteSpecHttp2RouteActionRewrite({
    this.hostname,
    this.path,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttp2RouteActionRewriteHostname, Map<String, dynamic>>(hostname, (value) => value.toMap()),
      'path': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttp2RouteActionRewritePath, Map<String, dynamic>>(path, (value) => value.toMap()),
      'prefix': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttp2RouteActionRewritePrefix, Map<String, dynamic>>(prefix, (value) => value.toMap()),
    };
  }

  factory GatewayRouteSpecHttp2RouteActionRewrite.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteActionRewrite(
      hostname: map['hostname'] == null ? null : (GatewayRouteSpecHttp2RouteActionRewriteHostname.fromMap((map['hostname'] as Map).cast<String, dynamic>())).input(),
      path: map['path'] == null ? null : (GatewayRouteSpecHttp2RouteActionRewritePath.fromMap((map['path'] as Map).cast<String, dynamic>())).input(),
      prefix: map['prefix'] == null ? null : (GatewayRouteSpecHttp2RouteActionRewritePrefix.fromMap((map['prefix'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

