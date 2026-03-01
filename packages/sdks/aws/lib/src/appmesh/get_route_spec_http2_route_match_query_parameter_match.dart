// ignore_for_file: unused_element, unnecessary_cast


class GetRouteSpecHttp2RouteMatchQueryParameterMatch {
  final String exact;

  /// Creates a new [GetRouteSpecHttp2RouteMatchQueryParameterMatch].
  /// [exact] Required.
  GetRouteSpecHttp2RouteMatchQueryParameterMatch({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
    };
  }

  factory GetRouteSpecHttp2RouteMatchQueryParameterMatch.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteMatchQueryParameterMatch(
      exact: map['exact'] as String,
    );
  }
}

