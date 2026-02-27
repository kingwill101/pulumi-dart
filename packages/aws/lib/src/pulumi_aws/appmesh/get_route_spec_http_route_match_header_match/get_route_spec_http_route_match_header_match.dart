// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_route_spec_http_route_match_header_match_range/get_route_spec_http_route_match_header_match_range.dart';

class GetRouteSpecHttpRouteMatchHeaderMatch {
  final String exact;
  final String prefix;
  final List<GetRouteSpecHttpRouteMatchHeaderMatchRange> ranges;
  final String regex;
  final String suffix;

  GetRouteSpecHttpRouteMatchHeaderMatch({
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
        GetRouteSpecHttpRouteMatchHeaderMatchRange,
        Map<String, dynamic>>(ranges, (value) => value.toMap());
    map['regex'] = regex;
    map['suffix'] = suffix;
    return map;
  }

  factory GetRouteSpecHttpRouteMatchHeaderMatch.fromMap(
      Map<String, dynamic> map) {
    return GetRouteSpecHttpRouteMatchHeaderMatch(
      exact: map['exact'] as String,
      prefix: map['prefix'] as String,
      ranges:
          pulumi.Input.decodeList<GetRouteSpecHttpRouteMatchHeaderMatchRange>(
              map['ranges'],
              (value) => GetRouteSpecHttpRouteMatchHeaderMatchRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      regex: map['regex'] as String,
      suffix: map['suffix'] as String,
    );
  }
}
