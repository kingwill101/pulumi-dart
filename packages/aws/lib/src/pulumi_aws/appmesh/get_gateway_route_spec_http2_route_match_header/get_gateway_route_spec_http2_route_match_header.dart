// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_gateway_route_spec_http2_route_match_header_match/get_gateway_route_spec_http2_route_match_header_match.dart';

class GetGatewayRouteSpecHttp2RouteMatchHeader {
  final bool invert;
  final List<GetGatewayRouteSpecHttp2RouteMatchHeaderMatch> matches;

  /// Name of the gateway route.
  final String name;

  GetGatewayRouteSpecHttp2RouteMatchHeader({
    required this.invert,
    required this.matches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['invert'] = invert;
    map['matches'] = pulumi.Input.encodeList<
        GetGatewayRouteSpecHttp2RouteMatchHeaderMatch,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    map['name'] = name;
    return map;
  }

  factory GetGatewayRouteSpecHttp2RouteMatchHeader.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatchHeader(
      invert: map['invert'] as bool,
      matches: pulumi.Input.decodeList<
              GetGatewayRouteSpecHttp2RouteMatchHeaderMatch>(
          map['matches'],
          (value) => GetGatewayRouteSpecHttp2RouteMatchHeaderMatch.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
