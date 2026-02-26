// ignore_for_file: unused_element, unnecessary_cast

import '../route_spec_http2_route_match_header_match/route_spec_http2_route_match_header_match.dart';

class RouteSpecHttp2RouteMatchHeader {
  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the match is on the opposite of the <span pulumi-lang-nodejs="`match`" pulumi-lang-dotnet="`Match`" pulumi-lang-go="`match`" pulumi-lang-python="`match`" pulumi-lang-yaml="`match`" pulumi-lang-java="`match`">`match`</span> method and value. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? invert;

  /// Method and value to match the header value sent with a request. Specify one match method.
  final RouteSpecHttp2RouteMatchHeaderMatch? match;

  /// Name for the HTTP header in the client request that will be matched on.
  final String name;

  RouteSpecHttp2RouteMatchHeader({
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

  factory RouteSpecHttp2RouteMatchHeader.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteMatchHeader(
      invert: map['invert'] == null ? null : map['invert'] as bool,
      match: map['match'] == null
          ? null
          : RouteSpecHttp2RouteMatchHeaderMatch.fromMap(
              (map['match'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
