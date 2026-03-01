// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecHttpRouteMatchPath {
  final String exact;
  final String regex;

  /// Creates a new [GetRouteSpecHttpRouteMatchPath].
  /// [exact] Required.
  /// [regex] Required.
  GetRouteSpecHttpRouteMatchPath({required this.exact, required this.regex});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'exact': exact, 'regex': regex};
  }

  factory GetRouteSpecHttpRouteMatchPath.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteMatchPath(
      exact: map['exact'] as String,
      regex: map['regex'] as String,
    );
  }
}
