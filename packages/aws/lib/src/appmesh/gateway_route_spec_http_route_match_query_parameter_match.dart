// ignore_for_file: unused_element, unnecessary_cast


class GatewayRouteSpecHttpRouteMatchQueryParameterMatch {
  /// The exact query parameter to match on.
  final String? exact;

  /// Creates a new [GatewayRouteSpecHttpRouteMatchQueryParameterMatch].
  /// [exact] The exact query parameter to match on.
  GatewayRouteSpecHttpRouteMatchQueryParameterMatch({
    this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
    };
  }

  factory GatewayRouteSpecHttpRouteMatchQueryParameterMatch.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteMatchQueryParameterMatch(
      exact: map['exact'] == null ? null : map['exact'] as String,
    );
  }
}

