// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_route_spec_http_route_action_rewrite_hostname.dart';
import 'gateway_route_spec_http_route_action_rewrite_path.dart';
import 'gateway_route_spec_http_route_action_rewrite_prefix.dart';

class GatewayRouteSpecHttpRouteActionRewrite {
  /// Host name to rewrite.
  final GatewayRouteSpecHttpRouteActionRewriteHostname? hostname;
  /// Exact path to rewrite.
  final GatewayRouteSpecHttpRouteActionRewritePath? path;
  /// Specified beginning characters to rewrite.
  final GatewayRouteSpecHttpRouteActionRewritePrefix? prefix;

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
      'hostname': ?hostname == null ? null : hostname!.toMap(),
      'path': ?path == null ? null : path!.toMap(),
      'prefix': ?prefix == null ? null : prefix!.toMap(),
    };
  }

  factory GatewayRouteSpecHttpRouteActionRewrite.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteActionRewrite(
      hostname: map['hostname'] == null ? null : GatewayRouteSpecHttpRouteActionRewriteHostname.fromMap((map['hostname'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : GatewayRouteSpecHttpRouteActionRewritePath.fromMap((map['path'] as Map).cast<String, dynamic>()),
      prefix: map['prefix'] == null ? null : GatewayRouteSpecHttpRouteActionRewritePrefix.fromMap((map['prefix'] as Map).cast<String, dynamic>()),
    );
  }
}

