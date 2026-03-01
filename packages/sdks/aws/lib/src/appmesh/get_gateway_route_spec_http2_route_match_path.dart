// ignore_for_file: unused_element, unnecessary_cast


class GetGatewayRouteSpecHttp2RouteMatchPath {
  final String exact;
  final String regex;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteMatchPath].
  /// [exact] Required.
  /// [regex] Required.
  GetGatewayRouteSpecHttp2RouteMatchPath({
    required this.exact,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
      'regex': regex,
    };
  }

  factory GetGatewayRouteSpecHttp2RouteMatchPath.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatchPath(
      exact: map['exact'] as String,
      regex: map['regex'] as String,
    );
  }
}

