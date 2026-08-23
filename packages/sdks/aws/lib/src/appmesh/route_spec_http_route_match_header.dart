// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http_route_match_header_match.dart';

class RouteSpecHttpRouteMatchHeader {
  /// Whether to match on the opposite of the `match` method and value. Default is `false`.
  final pulumi.Input<bool>? invert;
  /// Criteria for determining a TCP request match. See `spec.tcp_route.match` Block for details.
  final pulumi.Input<RouteSpecHttpRouteMatchHeaderMatch>? match;
  /// Name to use for the route. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> name;

  /// Creates a new [RouteSpecHttpRouteMatchHeader].
  /// [invert] Whether to match on the opposite of the `match` method and value. Default is `false`.
  /// [match] Criteria for determining a TCP request match. See `spec.tcp_route.match` Block for details.
  /// [name] Name to use for the route. Must be between 1 and 255 characters in length.
  const RouteSpecHttpRouteMatchHeader({
    this.invert,
    this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invert': ?invert,
      'match': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttpRouteMatchHeaderMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'name': name,
    };
  }

  factory RouteSpecHttpRouteMatchHeader.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRouteMatchHeader(
      invert: (() { final guardedValue = map['invert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecHttpRouteMatchHeaderMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
