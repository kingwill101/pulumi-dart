// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_spec_http2_route_match_header_match/get_route_spec_http2_route_match_header_match.dart';

class GetRouteSpecHttp2RouteMatchHeader {
  final bool invert;
  final List<GetRouteSpecHttp2RouteMatchHeaderMatch> matches;

  /// Name of the route.
  final String name;

  GetRouteSpecHttp2RouteMatchHeader({
    required this.invert,
    required this.matches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['invert'] = invert;
    map['matches'] = Input.encodeList<GetRouteSpecHttp2RouteMatchHeaderMatch,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    map['name'] = name;
    return map;
  }

  factory GetRouteSpecHttp2RouteMatchHeader.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteMatchHeader(
      invert: map['invert'] as bool,
      matches: Input.decodeList<GetRouteSpecHttp2RouteMatchHeaderMatch>(
          map['matches'],
          (value) => GetRouteSpecHttp2RouteMatchHeaderMatch.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
