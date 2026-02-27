// ignore_for_file: unused_element, unnecessary_cast

import '../route_spec_http_route_match_header_match/route_spec_http_route_match_header_match.dart';

class RouteSpecHttpRouteMatchHeader {
  /// If `true`, the match is on the opposite of the `match` method and value. Default is `false`.
  final bool? invert;

  /// Method and value to match the header value sent with a request. Specify one match method.
  final RouteSpecHttpRouteMatchHeaderMatch? match;

  /// Name for the HTTP header in the client request that will be matched on.
  final String name;

  RouteSpecHttpRouteMatchHeader({
    this.invert,
    this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final invertValue = invert;
    if (invertValue != null) {
      map['invert'] = invertValue;
    }
    final matchValue = match;
    if (matchValue != null) {
      map['match'] = matchValue.toMap();
    }
    map['name'] = name;
    return map;
  }

  factory RouteSpecHttpRouteMatchHeader.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRouteMatchHeader(
      invert: map['invert'] == null ? null : map['invert'] as bool,
      match: map['match'] == null
          ? null
          : RouteSpecHttpRouteMatchHeaderMatch.fromMap(
              (map['match'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
