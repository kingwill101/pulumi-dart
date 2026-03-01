// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecHttpRouteMatchPath {
  final String exact;
  final String regex;

  /// Creates a new [GetGatewayRouteSpecHttpRouteMatchPath].
  /// [exact] Required.
  /// [regex] Required.
  GetGatewayRouteSpecHttpRouteMatchPath({
    required this.exact,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'exact': exact, 'regex': regex};
  }

  factory GetGatewayRouteSpecHttpRouteMatchPath.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGatewayRouteSpecHttpRouteMatchPath(
      exact: map['exact'] as String,
      regex: map['regex'] as String,
    );
  }
}
