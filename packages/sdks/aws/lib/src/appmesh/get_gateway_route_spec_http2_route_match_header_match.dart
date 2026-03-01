// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_http2_route_match_header_match_range.dart';

class GetGatewayRouteSpecHttp2RouteMatchHeaderMatch {
  final String exact;
  final String prefix;
  final List<GetGatewayRouteSpecHttp2RouteMatchHeaderMatchRange> ranges;
  final String regex;
  final String suffix;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteMatchHeaderMatch].
  /// [exact] Required.
  /// [prefix] Required.
  /// [ranges] Required.
  /// [regex] Required.
  /// [suffix] Required.
  GetGatewayRouteSpecHttp2RouteMatchHeaderMatch({
    required this.exact,
    required this.prefix,
    required this.ranges,
    required this.regex,
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
      'prefix': prefix,
      'ranges': pulumi.Input.encodeList<GetGatewayRouteSpecHttp2RouteMatchHeaderMatchRange, Map<String, dynamic>>(ranges, (value) => value.toMap()),
      'regex': regex,
      'suffix': suffix,
    };
  }

  factory GetGatewayRouteSpecHttp2RouteMatchHeaderMatch.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteMatchHeaderMatch(
      exact: map['exact'] as String,
      prefix: map['prefix'] as String,
      ranges: pulumi.Input.decodeList<GetGatewayRouteSpecHttp2RouteMatchHeaderMatchRange>(map['ranges'], (value) => GetGatewayRouteSpecHttp2RouteMatchHeaderMatchRange.fromMap((value as Map).cast<String, dynamic>())),
      regex: map['regex'] as String,
      suffix: map['suffix'] as String,
    );
  }
}

