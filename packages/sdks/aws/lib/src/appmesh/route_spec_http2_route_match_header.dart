// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http2_route_match_header_match.dart';

class RouteSpecHttp2RouteMatchHeader {
  /// If `true`, the match is on the opposite of the `match` method and value. Default is `false`.
  final pulumi.Input<bool>? invert;
  /// Method and value to match the header value sent with a request. Specify one match method.
  final pulumi.Input<RouteSpecHttp2RouteMatchHeaderMatch>? match;
  /// Name for the HTTP header in the client request that will be matched on.
  final pulumi.Input<String> name;

  /// Creates a new [RouteSpecHttp2RouteMatchHeader].
  /// [invert] If `true`, the match is on the opposite of the `match` method and value. Default is `false`.
  /// [match] Method and value to match the header value sent with a request. Specify one match method.
  /// [name] Name for the HTTP header in the client request that will be matched on.
  RouteSpecHttp2RouteMatchHeader({
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
      invert: map['invert'] == null ? null : ((map['invert'] as bool).input()).input(),
      match: map['match'] == null ? null : ((RouteSpecHttp2RouteMatchHeaderMatch.fromMap((map['match']! as Map).cast<String, dynamic>())).input()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

