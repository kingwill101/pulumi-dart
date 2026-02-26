// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecHttp2RouteMatchPath {
  /// The exact path to match on.
  final String? exact;

  /// The regex used to match the path.
  final String? regex;

  GatewayRouteSpecHttp2RouteMatchPath({
    this.exact,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exactValue = exact;
    if (exactValue != null) {
      map['exact'] = exactValue;
    }
    final regexValue = regex;
    if (regexValue != null) {
      map['regex'] = regexValue;
    }
    return map;
  }

  factory GatewayRouteSpecHttp2RouteMatchPath.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteMatchPath(
      exact: map['exact'] == null ? null : map['exact'] as String,
      regex: map['regex'] == null ? null : map['regex'] as String,
    );
  }
}
