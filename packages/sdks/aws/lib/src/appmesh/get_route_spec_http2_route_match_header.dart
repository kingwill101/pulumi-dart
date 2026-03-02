// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http2_route_match_header_match.dart';

class GetRouteSpecHttp2RouteMatchHeader {
  final pulumi.Input<bool> invert;
  final pulumi.Input<List<GetRouteSpecHttp2RouteMatchHeaderMatch>> matches;
  /// Name of the route.
  final pulumi.Input<String> name;

  /// Creates a new [GetRouteSpecHttp2RouteMatchHeader].
  /// [invert] Required.
  /// [matches] Required.
  /// [name] Name of the route.
  GetRouteSpecHttp2RouteMatchHeader({
    required this.invert,
    required this.matches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invert': invert,
      'matches': pulumi.Input.mapInputValue<List<GetRouteSpecHttp2RouteMatchHeaderMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetRouteSpecHttp2RouteMatchHeaderMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory GetRouteSpecHttp2RouteMatchHeader.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteMatchHeader(
      invert: (map['invert'] as bool).input(),
      matches: (pulumi.Input.decodeList<GetRouteSpecHttp2RouteMatchHeaderMatch>(map['matches']!, (value) => GetRouteSpecHttp2RouteMatchHeaderMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
    );
  }
}

