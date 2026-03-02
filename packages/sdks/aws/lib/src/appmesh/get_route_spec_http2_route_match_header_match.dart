// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http2_route_match_header_match_range.dart';

class GetRouteSpecHttp2RouteMatchHeaderMatch {
  final pulumi.Input<String> exact;
  final pulumi.Input<String> prefix;
  final pulumi.Input<List<GetRouteSpecHttp2RouteMatchHeaderMatchRange>> ranges;
  final pulumi.Input<String> regex;
  final pulumi.Input<String> suffix;

  /// Creates a new [GetRouteSpecHttp2RouteMatchHeaderMatch].
  /// [exact] Required.
  /// [prefix] Required.
  /// [ranges] Required.
  /// [regex] Required.
  /// [suffix] Required.
  GetRouteSpecHttp2RouteMatchHeaderMatch({
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
      'ranges': pulumi.Input.mapInputValue<List<GetRouteSpecHttp2RouteMatchHeaderMatchRange>, List<Map<String, dynamic>>>(ranges, (value) => pulumi.Input.encodeList<GetRouteSpecHttp2RouteMatchHeaderMatchRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regex': regex,
      'suffix': suffix,
    };
  }

  factory GetRouteSpecHttp2RouteMatchHeaderMatch.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteMatchHeaderMatch(
      exact: (map['exact'] as String).input(),
      prefix: (map['prefix'] as String).input(),
      ranges: (pulumi.Input.decodeList<GetRouteSpecHttp2RouteMatchHeaderMatchRange>(map['ranges']!, (value) => GetRouteSpecHttp2RouteMatchHeaderMatchRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      regex: (map['regex'] as String).input(),
      suffix: (map['suffix'] as String).input(),
    );
  }
}

