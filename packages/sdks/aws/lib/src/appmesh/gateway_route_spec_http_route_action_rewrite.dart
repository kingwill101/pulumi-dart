// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http_route_action_rewrite_hostname.dart';
import 'gateway_route_spec_http_route_action_rewrite_path.dart';
import 'gateway_route_spec_http_route_action_rewrite_prefix.dart';

class GatewayRouteSpecHttpRouteActionRewrite {
  /// Host name to match on. See `spec.http2_route.match.hostname` Block for details.
  final pulumi.Input<GatewayRouteSpecHttpRouteActionRewriteHostname?>? hostname;
  /// Client request path to match on. See `spec.http2_route.match.path` Block for details.
  final pulumi.Input<GatewayRouteSpecHttpRouteActionRewritePath?>? path;
  /// Header value sent by the client must begin with the specified characters.
  final pulumi.Input<GatewayRouteSpecHttpRouteActionRewritePrefix?>? prefix;

  /// Creates a new [GatewayRouteSpecHttpRouteActionRewrite].
  /// [hostname] Host name to match on. See `spec.http2_route.match.hostname` Block for details.
  /// [path] Client request path to match on. See `spec.http2_route.match.path` Block for details.
  /// [prefix] Header value sent by the client must begin with the specified characters.
  const GatewayRouteSpecHttpRouteActionRewrite({
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
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayRouteSpecHttpRouteActionRewriteHostname.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayRouteSpecHttpRouteActionRewritePath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayRouteSpecHttpRouteActionRewritePrefix.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
