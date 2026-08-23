// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayRouteSpecHttp2RouteMatchQueryParameterMatch {
  /// Exact query parameter to match on.
  final pulumi.Input<String>? exact;

  /// Creates a new [GatewayRouteSpecHttp2RouteMatchQueryParameterMatch].
  /// [exact] Exact query parameter to match on.
  const GatewayRouteSpecHttp2RouteMatchQueryParameterMatch({
    this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
    };
  }

  factory GatewayRouteSpecHttp2RouteMatchQueryParameterMatch.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteMatchQueryParameterMatch(
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
