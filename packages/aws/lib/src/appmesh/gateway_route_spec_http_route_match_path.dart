// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecHttpRouteMatchPath {
  /// The exact path to match on.
  final String? exact;

  /// The regex used to match the path.
  final String? regex;

  /// Creates a new [GatewayRouteSpecHttpRouteMatchPath].
  /// [exact] The exact path to match on.
  /// [regex] The regex used to match the path.
  GatewayRouteSpecHttpRouteMatchPath({
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

  factory GatewayRouteSpecHttpRouteMatchPath.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteMatchPath(
      exact: map['exact'] == null ? null : map['exact'] as String,
      regex: map['regex'] == null ? null : map['regex'] as String,
    );
  }
}
