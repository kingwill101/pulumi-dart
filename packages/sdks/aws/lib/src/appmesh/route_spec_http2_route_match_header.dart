// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http2_route_match_header_match.dart';

class RouteSpecHttp2RouteMatchHeader {
  /// Whether to match on the opposite of the `match` method and value. Default is `false`.
  final pulumi.Input<bool?>? invert;
  /// Criteria for determining a TCP request match. See `spec.tcp_route.match` Block for details.
  final pulumi.Input<RouteSpecHttp2RouteMatchHeaderMatch?>? match;
  /// Name to use for the route. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> name;

  /// Creates a new [RouteSpecHttp2RouteMatchHeader].
  /// [invert] Whether to match on the opposite of the `match` method and value. Default is `false`.
  /// [match] Criteria for determining a TCP request match. See `spec.tcp_route.match` Block for details.
  /// [name] Name to use for the route. Must be between 1 and 255 characters in length.
  const RouteSpecHttp2RouteMatchHeader({
    this.invert,
    this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invert': ?invert,
      'match': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttp2RouteMatchHeaderMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'name': name,
    };
  }

  factory RouteSpecHttp2RouteMatchHeader.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteMatchHeader(
      invert: (() { final guardedValue = map['invert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecHttp2RouteMatchHeaderMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
