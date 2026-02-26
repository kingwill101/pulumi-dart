// ignore_for_file: unused_element, unnecessary_cast

class RouteSpecHttpRouteMatchQueryParameterMatch {
  /// The exact query parameter to match on.
  final String? exact;

  RouteSpecHttpRouteMatchQueryParameterMatch({
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

  factory RouteSpecHttpRouteMatchQueryParameterMatch.fromMap(
      Map<String, dynamic> map) {
    return RouteSpecHttpRouteMatchQueryParameterMatch(
      exact: map['exact'] == null ? null : map['exact'] as String,
    );
  }
}
