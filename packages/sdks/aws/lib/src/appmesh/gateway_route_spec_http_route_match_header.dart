// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http_route_match_header_match.dart';

class GatewayRouteSpecHttpRouteMatchHeader {
  /// If `true`, the match is on the opposite of the `match` method and value. Default is `false`.
  final pulumi.Input<bool>? invert;
  final pulumi.Input<GatewayRouteSpecHttpRouteMatchHeaderMatch>? match;
  /// Name to use for the gateway route. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> name;

  /// Creates a new [GatewayRouteSpecHttpRouteMatchHeader].
  /// [invert] If `true`, the match is on the opposite of the `match` method and value. Default is `false`.
  /// [match] Optional.
  /// [name] Name to use for the gateway route. Must be between 1 and 255 characters in length.
  const GatewayRouteSpecHttpRouteMatchHeader({
    this.invert,
    this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invert': ?invert,
      'match': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttpRouteMatchHeaderMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GatewayRouteSpecHttpRouteMatchHeader.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteMatchHeader(
      invert: (() { final guardedValue = map['invert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayRouteSpecHttpRouteMatchHeaderMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
