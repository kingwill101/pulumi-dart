// ignore_for_file: unused_element, unnecessary_cast


class GetRouteSpecHttp2RouteMatchPath {
  final String exact;
  final String regex;

  /// Creates a new [GetRouteSpecHttp2RouteMatchPath].
  /// [exact] Required.
  /// [regex] Required.
  GetRouteSpecHttp2RouteMatchPath({
    required this.exact,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
      'regex': regex,
    };
  }

  factory GetRouteSpecHttp2RouteMatchPath.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteMatchPath(
      exact: map['exact'] as String,
      regex: map['regex'] as String,
    );
  }
}

