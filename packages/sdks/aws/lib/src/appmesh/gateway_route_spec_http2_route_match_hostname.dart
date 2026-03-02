// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayRouteSpecHttp2RouteMatchHostname {
  /// Exact host name to match on.
  final pulumi.Input<String>? exact;
  /// Specified ending characters of the host name to match on.
  final pulumi.Input<String>? suffix;

  /// Creates a new [GatewayRouteSpecHttp2RouteMatchHostname].
  /// [exact] Exact host name to match on.
  /// [suffix] Specified ending characters of the host name to match on.
  GatewayRouteSpecHttp2RouteMatchHostname({
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
      exact: map['exact'] == null ? null : ((map['exact'] as String).input()).input(),
      suffix: map['suffix'] == null ? null : ((map['suffix'] as String).input()).input(),
    );
  }
}

