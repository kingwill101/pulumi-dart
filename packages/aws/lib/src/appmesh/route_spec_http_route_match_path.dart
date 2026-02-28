// ignore_for_file: unused_element, unnecessary_cast


class RouteSpecHttpRouteMatchPath {
  /// The exact path to match on.
  final String? exact;
  /// The regex used to match the path.
  final String? regex;

  /// Creates a new [RouteSpecHttpRouteMatchPath].
  /// [exact] The exact path to match on.
  /// [regex] The regex used to match the path.
  RouteSpecHttpRouteMatchPath({
    this.exact,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
      'regex': ?regex,
    };
  }

  factory RouteSpecHttpRouteMatchPath.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRouteMatchPath(
      exact: map['exact'] == null ? null : map['exact'] as String,
      regex: map['regex'] == null ? null : map['regex'] as String,
    );
  }
}

