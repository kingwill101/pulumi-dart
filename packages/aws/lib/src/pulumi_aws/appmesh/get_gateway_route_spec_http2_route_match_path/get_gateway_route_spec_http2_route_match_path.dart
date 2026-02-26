// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecHttp2RouteMatchPath {
  final String exact;
  final String regex;

  GetGatewayRouteSpecHttp2RouteMatchPath({
    required this.exact,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exact'] = exact;
    map['regex'] = regex;
    return map;
  }

  factory GetGatewayRouteSpecHttp2RouteMatchPath.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatchPath(
      exact: map['exact'] as String,
      regex: map['regex'] as String,
    );
  }
}
