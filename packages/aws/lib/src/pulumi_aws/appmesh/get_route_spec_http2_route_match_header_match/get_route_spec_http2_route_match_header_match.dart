// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_route_spec_http2_route_match_header_match_range/get_route_spec_http2_route_match_header_match_range.dart';

class GetRouteSpecHttp2RouteMatchHeaderMatch {
  final String exact;
  final String prefix;
  final List<GetRouteSpecHttp2RouteMatchHeaderMatchRange> ranges;
  final String regex;
  final String suffix;

  GetRouteSpecHttp2RouteMatchHeaderMatch({
    required this.exact,
    required this.prefix,
    required this.ranges,
    required this.regex,
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exact'] = exact;
    map['prefix'] = prefix;
    map['ranges'] = pulumi.Input.encodeList<
        GetRouteSpecHttp2RouteMatchHeaderMatchRange,
        Map<String, dynamic>>(ranges, (value) => value.toMap());
    map['regex'] = regex;
    map['suffix'] = suffix;
    return map;
  }

  factory GetRouteSpecHttp2RouteMatchHeaderMatch.fromMap(
      Map<String, dynamic> map) {
    return GetRouteSpecHttp2RouteMatchHeaderMatch(
      exact: map['exact'] as String,
      prefix: map['prefix'] as String,
      ranges:
          pulumi.Input.decodeList<GetRouteSpecHttp2RouteMatchHeaderMatchRange>(
              map['ranges'],
              (value) => GetRouteSpecHttp2RouteMatchHeaderMatchRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      regex: map['regex'] as String,
      suffix: map['suffix'] as String,
    );
  }
}
