// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecHttpRouteMatchQueryParameterMatch {
  /// The exact query parameter to match on.
  final String? exact;

  GatewayRouteSpecHttpRouteMatchQueryParameterMatch({
    this.exact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exactValue = exact;
    if (exactValue != null) {
      map['exact'] = exactValue;
    }
    return map;
  }

  factory GatewayRouteSpecHttpRouteMatchQueryParameterMatch.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteMatchQueryParameterMatch(
      exact: map['exact'] == null ? null : map['exact'] as String,
    );
  }
}
