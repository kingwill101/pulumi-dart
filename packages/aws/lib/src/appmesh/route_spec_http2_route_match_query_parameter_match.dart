// ignore_for_file: unused_element, unnecessary_cast


class RouteSpecHttp2RouteMatchQueryParameterMatch {
  /// The exact query parameter to match on.
  final String? exact;

  /// Creates a new [RouteSpecHttp2RouteMatchQueryParameterMatch].
  /// [exact] The exact query parameter to match on.
  RouteSpecHttp2RouteMatchQueryParameterMatch({
    this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
    };
  }

  factory RouteSpecHttp2RouteMatchQueryParameterMatch.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteMatchQueryParameterMatch(
      exact: map['exact'] == null ? null : map['exact'] as String,
    );
  }
}

