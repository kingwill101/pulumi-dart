// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayRouteSpecHttpRouteMatchQueryParameterMatch {
  /// Exact query parameter to match on.
  final pulumi.Input<String>? exact;

  /// Creates a new [GatewayRouteSpecHttpRouteMatchQueryParameterMatch].
  /// [exact] Exact query parameter to match on.
  const GatewayRouteSpecHttpRouteMatchQueryParameterMatch({
    this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
    };
  }

  factory GatewayRouteSpecHttpRouteMatchQueryParameterMatch.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteMatchQueryParameterMatch(
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
