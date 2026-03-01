// ignore_for_file: unused_element, unnecessary_cast

class RouteSpecHttpRouteMatchQueryParameterMatch {
  /// The exact query parameter to match on.
  final String? exact;

  /// Creates a new [RouteSpecHttpRouteMatchQueryParameterMatch].
  /// [exact] The exact query parameter to match on.
  RouteSpecHttpRouteMatchQueryParameterMatch({this.exact});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'exact': ?exact};
  }

  factory RouteSpecHttpRouteMatchQueryParameterMatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return RouteSpecHttpRouteMatchQueryParameterMatch(
      exact: map['exact'] == null ? null : map['exact'] as String,
    );
  }
}
