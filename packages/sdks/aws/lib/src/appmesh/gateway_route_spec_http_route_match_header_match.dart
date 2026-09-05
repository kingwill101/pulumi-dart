// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_http_route_match_header_match_range.dart';

class GatewayRouteSpecHttpRouteMatchHeaderMatch {
  /// Exact query parameter to match on.
  final pulumi.Input<String?>? exact;
  /// Header value sent by the client must begin with the specified characters.
  final pulumi.Input<String?>? prefix;
  /// Object that specifies the range of numbers that the header value sent by the client must be included in. See `spec.http2_route.match.header.match.range` Block for details.
  final pulumi.Input<GatewayRouteSpecHttpRouteMatchHeaderMatchRange?>? range;
  /// Regex used to match the path.
  final pulumi.Input<String?>? regex;
  /// Specified ending characters of the host name to match on.
  final pulumi.Input<String?>? suffix;

  /// Creates a new [GatewayRouteSpecHttpRouteMatchHeaderMatch].
  /// [exact] Exact query parameter to match on.
  /// [prefix] Header value sent by the client must begin with the specified characters.
  /// [range] Object that specifies the range of numbers that the header value sent by the client must be included in. See `spec.http2_route.match.header.match.range` Block for details.
  /// [regex] Regex used to match the path.
  /// [suffix] Specified ending characters of the host name to match on.
  const GatewayRouteSpecHttpRouteMatchHeaderMatch({
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
      'range': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttpRouteMatchHeaderMatchRange, Map<String, dynamic>>(range, (value) => value.toMap()),
      'regex': ?regex,
      'suffix': ?suffix,
    };
  }

  factory GatewayRouteSpecHttpRouteMatchHeaderMatch.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteMatchHeaderMatch(
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayRouteSpecHttpRouteMatchHeaderMatchRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
