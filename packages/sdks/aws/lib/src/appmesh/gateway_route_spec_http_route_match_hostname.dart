// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayRouteSpecHttpRouteMatchHostname {
  /// Exact host name to match on.
  final pulumi.Input<String>? exact;
  /// Specified ending characters of the host name to match on.
  final pulumi.Input<String>? suffix;

  /// Creates a new [GatewayRouteSpecHttpRouteMatchHostname].
  /// [exact] Exact host name to match on.
  /// [suffix] Specified ending characters of the host name to match on.
  GatewayRouteSpecHttpRouteMatchHostname({
    this.exact,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
      'suffix': ?suffix,
    };
  }

  factory GatewayRouteSpecHttpRouteMatchHostname.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteMatchHostname(
      exact: map['exact'] == null ? null : ((map['exact'] as String).input()).input(),
      suffix: map['suffix'] == null ? null : ((map['suffix'] as String).input()).input(),
    );
  }
}

