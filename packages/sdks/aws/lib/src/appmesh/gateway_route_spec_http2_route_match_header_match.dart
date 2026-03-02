// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http2_route_match_header_match_range.dart';

class GatewayRouteSpecHttp2RouteMatchHeaderMatch {
  /// Header value sent by the client must match the specified value exactly.
  final pulumi.Input<String>? exact;
  /// Header value sent by the client must begin with the specified characters.
  final pulumi.Input<String>? prefix;
  /// Object that specifies the range of numbers that the header value sent by the client must be included in.
  final pulumi.Input<GatewayRouteSpecHttp2RouteMatchHeaderMatchRange>? range;
  /// Header value sent by the client must include the specified characters.
  final pulumi.Input<String>? regex;
  /// Header value sent by the client must end with the specified characters.
  final pulumi.Input<String>? suffix;

  /// Creates a new [GatewayRouteSpecHttp2RouteMatchHeaderMatch].
  /// [exact] Header value sent by the client must match the specified value exactly.
  /// [prefix] Header value sent by the client must begin with the specified characters.
  /// [range] Object that specifies the range of numbers that the header value sent by the client must be included in.
  /// [regex] Header value sent by the client must include the specified characters.
  /// [suffix] Header value sent by the client must end with the specified characters.
  GatewayRouteSpecHttp2RouteMatchHeaderMatch({
    this.exact,
    this.prefix,
    this.range,
    this.regex,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
      'prefix': ?prefix,
      'range': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttp2RouteMatchHeaderMatchRange, Map<String, dynamic>>(range, (value) => value.toMap()),
      'regex': ?regex,
      'suffix': ?suffix,
    };
  }

  factory GatewayRouteSpecHttp2RouteMatchHeaderMatch.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteMatchHeaderMatch(
      exact: map['exact'] == null ? null : ((map['exact'] as String).input()).input(),
      prefix: map['prefix'] == null ? null : ((map['prefix'] as String).input()).input(),
      range: map['range'] == null ? null : ((GatewayRouteSpecHttp2RouteMatchHeaderMatchRange.fromMap((map['range']! as Map).cast<String, dynamic>())).input()).input(),
      regex: map['regex'] == null ? null : ((map['regex'] as String).input()).input(),
      suffix: map['suffix'] == null ? null : ((map['suffix'] as String).input()).input(),
    );
  }
}

