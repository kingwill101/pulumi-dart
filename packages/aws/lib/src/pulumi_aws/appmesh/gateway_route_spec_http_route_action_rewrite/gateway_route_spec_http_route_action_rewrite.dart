// ignore_for_file: unused_element, unnecessary_cast

import '../gateway_route_spec_http_route_action_rewrite_hostname/gateway_route_spec_http_route_action_rewrite_hostname.dart';
import '../gateway_route_spec_http_route_action_rewrite_path/gateway_route_spec_http_route_action_rewrite_path.dart';
import '../gateway_route_spec_http_route_action_rewrite_prefix/gateway_route_spec_http_route_action_rewrite_prefix.dart';

class GatewayRouteSpecHttpRouteActionRewrite {
  /// Host name to rewrite.
  final GatewayRouteSpecHttpRouteActionRewriteHostname? hostname;

  /// Exact path to rewrite.
  final GatewayRouteSpecHttpRouteActionRewritePath? path;

  /// Specified beginning characters to rewrite.
  final GatewayRouteSpecHttpRouteActionRewritePrefix? prefix;

  GatewayRouteSpecHttpRouteActionRewrite({
    this.hostname,
    this.path,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostnameValue = hostname;
    if (hostnameValue != null) {
      map['hostname'] = hostnameValue.toMap();
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue.toMap();
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue.toMap();
    }
    return map;
  }

  factory GatewayRouteSpecHttpRouteActionRewrite.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteActionRewrite(
      hostname: map['hostname'] == null
          ? null
          : GatewayRouteSpecHttpRouteActionRewriteHostname.fromMap(
              (map['hostname'] as Map).cast<String, dynamic>()),
      path: map['path'] == null
          ? null
          : GatewayRouteSpecHttpRouteActionRewritePath.fromMap(
              (map['path'] as Map).cast<String, dynamic>()),
      prefix: map['prefix'] == null
          ? null
          : GatewayRouteSpecHttpRouteActionRewritePrefix.fromMap(
              (map['prefix'] as Map).cast<String, dynamic>()),
    );
  }
}
