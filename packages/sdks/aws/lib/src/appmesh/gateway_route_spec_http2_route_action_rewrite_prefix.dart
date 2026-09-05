// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayRouteSpecHttp2RouteActionRewritePrefix {
  /// Default prefix used to replace the incoming route prefix when rewritten. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String?>? defaultPrefix;
  /// Value used to replace the incoming route prefix when rewritten.
  final pulumi.Input<String?>? value;

  /// Creates a new [GatewayRouteSpecHttp2RouteActionRewritePrefix].
  /// [defaultPrefix] Default prefix used to replace the incoming route prefix when rewritten. Valid values: `ENABLED`, `DISABLED`.
  /// [value] Value used to replace the incoming route prefix when rewritten.
  const GatewayRouteSpecHttp2RouteActionRewritePrefix({
    this.defaultPrefix,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultPrefix': ?defaultPrefix,
      'value': ?value,
    };
  }

  factory GatewayRouteSpecHttp2RouteActionRewritePrefix.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteActionRewritePrefix(
      defaultPrefix: (() { final guardedValue = map['defaultPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
