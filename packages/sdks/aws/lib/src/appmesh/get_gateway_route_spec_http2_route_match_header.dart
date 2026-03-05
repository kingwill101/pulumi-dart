// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http2_route_match_header_match.dart';

class GetGatewayRouteSpecHttp2RouteMatchHeader {
  final pulumi.Input<bool> invert;
  final pulumi.Input<List<GetGatewayRouteSpecHttp2RouteMatchHeaderMatch>> matches;
  /// Name of the gateway route.
  final pulumi.Input<String> name;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteMatchHeader].
  /// [invert] Required.
  /// [matches] Required.
  /// [name] Name of the gateway route.
  GetGatewayRouteSpecHttp2RouteMatchHeader({
    required this.invert,
    required this.matches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invert': invert,
      'matches': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttp2RouteMatchHeaderMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttp2RouteMatchHeaderMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory GetGatewayRouteSpecHttp2RouteMatchHeader.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatchHeader(
      invert: pulumi.Input.fromValue(map['invert'] as bool),
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteMatchHeaderMatch>(map['matches']!, (value) => GetGatewayRouteSpecHttp2RouteMatchHeaderMatch.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

