// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_route_spec_http2_route_match_header_match.dart';

class GatewayRouteSpecHttp2RouteMatchHeader {
  /// If `true`, the match is on the opposite of the `match` method and value. Default is `false`.
  final bool? invert;

  /// Method and value to match the header value sent with a request. Specify one match method.
  final GatewayRouteSpecHttp2RouteMatchHeaderMatch? match;

  /// Name for the HTTP header in the client request that will be matched on.
  final String name;

  /// Creates a new [GatewayRouteSpecHttp2RouteMatchHeader].
  /// [invert] If `true`, the match is on the opposite of the `match` method and value. Default is `false`.
  /// [match] Method and value to match the header value sent with a request. Specify one match method.
  /// [name] Name for the HTTP header in the client request that will be matched on.
  GatewayRouteSpecHttp2RouteMatchHeader({
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

  factory GatewayRouteSpecHttp2RouteMatchHeader.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteMatchHeader(
      invert: map['invert'] == null ? null : map['invert'] as bool,
      match: map['match'] == null
          ? null
          : GatewayRouteSpecHttp2RouteMatchHeaderMatch.fromMap(
              (map['match'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
