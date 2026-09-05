// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteSpecHttpRouteMatchQueryParameterMatch {
  /// Exact query parameter to match on.
  final pulumi.Input<String?>? exact;

  /// Creates a new [RouteSpecHttpRouteMatchQueryParameterMatch].
  /// [exact] Exact query parameter to match on.
  const RouteSpecHttpRouteMatchQueryParameterMatch({
    this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
    };
  }

  factory RouteSpecHttpRouteMatchQueryParameterMatch.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRouteMatchQueryParameterMatch(
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
