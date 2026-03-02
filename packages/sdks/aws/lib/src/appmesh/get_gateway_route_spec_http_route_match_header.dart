// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http_route_match_header_match.dart';

class GetGatewayRouteSpecHttpRouteMatchHeader {
  final pulumi.Input<bool> invert;
  final pulumi.Input<List<GetGatewayRouteSpecHttpRouteMatchHeaderMatch>> matches;
  /// Name of the gateway route.
  final pulumi.Input<String> name;

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
    return <String, dynamic>{
      'invert': invert,
      'matches': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttpRouteMatchHeaderMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttpRouteMatchHeaderMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory GetGatewayRouteSpecHttpRouteMatchHeader.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttpRouteMatchHeader(
      invert: (map['invert'] as bool).input(),
      matches: (pulumi.Input.decodeList<GetGatewayRouteSpecHttpRouteMatchHeaderMatch>(map['matches']!, (value) => GetGatewayRouteSpecHttpRouteMatchHeaderMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
    );
  }
}

