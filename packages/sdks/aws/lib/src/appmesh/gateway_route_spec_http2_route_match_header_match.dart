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
  const GatewayRouteSpecHttp2RouteMatchHeaderMatch({
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
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayRouteSpecHttp2RouteMatchHeaderMatchRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

