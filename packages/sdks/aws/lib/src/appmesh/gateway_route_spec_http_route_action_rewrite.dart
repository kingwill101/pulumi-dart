// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http_route_action_rewrite_hostname.dart';
import 'gateway_route_spec_http_route_action_rewrite_path.dart';
import 'gateway_route_spec_http_route_action_rewrite_prefix.dart';

class GatewayRouteSpecHttpRouteActionRewrite {
  /// Host name to rewrite.
  final pulumi.Input<GatewayRouteSpecHttpRouteActionRewriteHostname>? hostname;
  /// Exact path to rewrite.
  final pulumi.Input<GatewayRouteSpecHttpRouteActionRewritePath>? path;
  /// Specified beginning characters to rewrite.
  final pulumi.Input<GatewayRouteSpecHttpRouteActionRewritePrefix>? prefix;

  /// Creates a new [GatewayRouteSpecHttpRouteActionRewrite].
  /// [hostname] Host name to rewrite.
  /// [path] Exact path to rewrite.
  /// [prefix] Specified beginning characters to rewrite.
  GatewayRouteSpecHttpRouteActionRewrite({
    this.hostname,
    this.path,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttpRouteActionRewriteHostname, Map<String, dynamic>>(hostname, (value) => value.toMap()),
      'path': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttpRouteActionRewritePath, Map<String, dynamic>>(path, (value) => value.toMap()),
      'prefix': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttpRouteActionRewritePrefix, Map<String, dynamic>>(prefix, (value) => value.toMap()),
    };
  }

  factory GatewayRouteSpecHttpRouteActionRewrite.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteActionRewrite(
      hostname: map['hostname'] == null ? null : ((GatewayRouteSpecHttpRouteActionRewriteHostname.fromMap((map['hostname']! as Map).cast<String, dynamic>())).input()).input(),
      path: map['path'] == null ? null : ((GatewayRouteSpecHttpRouteActionRewritePath.fromMap((map['path']! as Map).cast<String, dynamic>())).input()).input(),
      prefix: map['prefix'] == null ? null : ((GatewayRouteSpecHttpRouteActionRewritePrefix.fromMap((map['prefix']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

