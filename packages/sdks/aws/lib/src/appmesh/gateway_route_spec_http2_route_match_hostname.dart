// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayRouteSpecHttp2RouteMatchHostname {
  /// Exact query parameter to match on.
  final pulumi.Input<String>? exact;
  /// Specified ending characters of the host name to match on.
  final pulumi.Input<String>? suffix;

  /// Creates a new [GatewayRouteSpecHttp2RouteMatchHostname].
  /// [exact] Exact query parameter to match on.
  /// [suffix] Specified ending characters of the host name to match on.
  const GatewayRouteSpecHttp2RouteMatchHostname({
    this.exact,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
      'suffix': ?suffix,
    };
  }

  factory GatewayRouteSpecHttp2RouteMatchHostname.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteMatchHostname(
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
