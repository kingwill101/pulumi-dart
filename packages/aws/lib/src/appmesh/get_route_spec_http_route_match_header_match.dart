// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http_route_match_header_match_range.dart';

class GetRouteSpecHttpRouteMatchHeaderMatch {
  final String exact;
  final String prefix;
  final List<GetRouteSpecHttpRouteMatchHeaderMatchRange> ranges;
  final String regex;
  final String suffix;

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
      'ranges':
          pulumi.Input.encodeList<
            GetRouteSpecHttpRouteMatchHeaderMatchRange,
            Map<String, dynamic>
          >(ranges, (value) => value.toMap()),
      'regex': regex,
      'suffix': suffix,
    };
  }

  factory GetRouteSpecHttpRouteMatchHeaderMatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRouteSpecHttpRouteMatchHeaderMatch(
      exact: map['exact'] as String,
      prefix: map['prefix'] as String,
      ranges:
          pulumi.Input.decodeList<GetRouteSpecHttpRouteMatchHeaderMatchRange>(
            map['ranges'],
            (value) => GetRouteSpecHttpRouteMatchHeaderMatchRange.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      regex: map['regex'] as String,
      suffix: map['suffix'] as String,
    );
  }
}
