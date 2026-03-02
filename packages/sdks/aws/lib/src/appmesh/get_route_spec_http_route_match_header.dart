// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http_route_match_header_match.dart';

class GetRouteSpecHttpRouteMatchHeader {
  final pulumi.Input<bool> invert;
  final pulumi.Input<List<GetRouteSpecHttpRouteMatchHeaderMatch>> matches;
  /// Name of the route.
  final pulumi.Input<String> name;

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
    return <String, dynamic>{
      'invert': invert,
      'matches': pulumi.Input.mapInputValue<List<GetRouteSpecHttpRouteMatchHeaderMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetRouteSpecHttpRouteMatchHeaderMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory GetRouteSpecHttpRouteMatchHeader.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteMatchHeader(
      invert: (map['invert'] as bool).input(),
      matches: (pulumi.Input.decodeList<GetRouteSpecHttpRouteMatchHeaderMatch>(map['matches']!, (value) => GetRouteSpecHttpRouteMatchHeaderMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
    );
  }
}

