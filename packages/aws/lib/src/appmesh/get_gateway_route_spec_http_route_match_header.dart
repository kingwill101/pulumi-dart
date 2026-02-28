// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http_route_match_header_match.dart';

class GetGatewayRouteSpecHttpRouteMatchHeader {
  final bool invert;
  final List<GetGatewayRouteSpecHttpRouteMatchHeaderMatch> matches;

  /// Name of the gateway route.
  final String name;

  /// Creates a new [GetGatewayRouteSpecHttpRouteMatchHeader].
  /// [invert] Required.
  /// [matches] Required.
  /// [name] Name of the gateway route.
  GetGatewayRouteSpecHttpRouteMatchHeader({
    required this.invert,
    required this.matches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['invert'] = invert;
    map['matches'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttpRouteMatchHeaderMatch,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    map['name'] = name;
    return map;
  }

  factory GetGatewayRouteSpecHttpRouteMatchHeader.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteMatchHeader(
      invert: map['invert'] as bool,
      matches:
          pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteMatchHeaderMatch>(
              map['matches'],
              (value) => GetGatewayRouteSpecHttpRouteMatchHeaderMatch.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
