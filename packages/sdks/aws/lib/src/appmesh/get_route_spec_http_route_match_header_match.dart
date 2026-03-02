// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http_route_match_header_match_range.dart';

class GetRouteSpecHttpRouteMatchHeaderMatch {
  final pulumi.Input<String> exact;
  final pulumi.Input<String> prefix;
  final pulumi.Input<List<GetRouteSpecHttpRouteMatchHeaderMatchRange>> ranges;
  final pulumi.Input<String> regex;
  final pulumi.Input<String> suffix;

  /// Creates a new [GetRouteSpecHttpRouteMatchHeaderMatch].
  /// [exact] Required.
  /// [prefix] Required.
  /// [ranges] Required.
  /// [regex] Required.
  /// [suffix] Required.
  GetRouteSpecHttpRouteMatchHeaderMatch({
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
      'ranges': pulumi.Input.mapInputValue<List<GetRouteSpecHttpRouteMatchHeaderMatchRange>, List<Map<String, dynamic>>>(ranges, (value) => pulumi.Input.encodeList<GetRouteSpecHttpRouteMatchHeaderMatchRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regex': regex,
      'suffix': suffix,
    };
  }

  factory GetRouteSpecHttpRouteMatchHeaderMatch.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteMatchHeaderMatch(
      exact: (map['exact'] as String).input(),
      prefix: (map['prefix'] as String).input(),
      ranges: (pulumi.Input.decodeList<GetRouteSpecHttpRouteMatchHeaderMatchRange>(map['ranges']!, (value) => GetRouteSpecHttpRouteMatchHeaderMatchRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      regex: (map['regex'] as String).input(),
      suffix: (map['suffix'] as String).input(),
    );
  }
}

