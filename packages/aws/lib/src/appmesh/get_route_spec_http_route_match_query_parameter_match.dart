// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecHttpRouteMatchQueryParameterMatch {
  final String exact;

  /// Creates a new [GetRouteSpecHttpRouteMatchQueryParameterMatch].
  /// [exact] Required.
  GetRouteSpecHttpRouteMatchQueryParameterMatch({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exact'] = exact;
    return map;
  }

  factory GetRouteSpecHttpRouteMatchQueryParameterMatch.fromMap(
      Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteMatchQueryParameterMatch(
      exact: map['exact'] as String,
    );
  }
}
