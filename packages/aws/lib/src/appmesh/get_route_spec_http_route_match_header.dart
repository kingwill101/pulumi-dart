// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http_route_match_header_match.dart';

class GetRouteSpecHttpRouteMatchHeader {
  final bool invert;
  final List<GetRouteSpecHttpRouteMatchHeaderMatch> matches;

  /// Name of the route.
  final String name;

  /// Creates a new [GetRouteSpecHttpRouteMatchHeader].
  /// [invert] Required.
  /// [matches] Required.
  /// [name] Name of the route.
  GetRouteSpecHttpRouteMatchHeader({
    required this.invert,
    required this.matches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['invert'] = invert;
    map['matches'] = pulumi.Input.encodeList<
        GetRouteSpecHttpRouteMatchHeaderMatch,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    map['name'] = name;
    return map;
  }

  factory GetRouteSpecHttpRouteMatchHeader.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteMatchHeader(
      invert: map['invert'] as bool,
      matches: pulumi.Input.decodeList<GetRouteSpecHttpRouteMatchHeaderMatch>(
          map['matches'],
          (value) => GetRouteSpecHttpRouteMatchHeaderMatch.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
