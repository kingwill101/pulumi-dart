// ignore_for_file: unused_element, unnecessary_cast

import '../route_spec_http2_route_match_header_match_range/route_spec_http2_route_match_header_match_range.dart';

class RouteSpecHttp2RouteMatchHeaderMatch {
  /// Header value sent by the client must match the specified value exactly.
  final String? exact;

  /// Header value sent by the client must begin with the specified characters.
  final String? prefix;

  /// Object that specifies the range of numbers that the header value sent by the client must be included in.
  final RouteSpecHttp2RouteMatchHeaderMatchRange? range;

  /// Header value sent by the client must include the specified characters.
  final String? regex;

  /// Header value sent by the client must end with the specified characters.
  final String? suffix;

  RouteSpecHttp2RouteMatchHeaderMatch({
    this.exact,
    this.prefix,
    this.range,
    this.regex,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exactValue = exact;
    if (exactValue != null) {
      map['exact'] = exactValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final rangeValue = range;
    if (rangeValue != null) {
      map['range'] = rangeValue.toMap();
    }
    final regexValue = regex;
    if (regexValue != null) {
      map['regex'] = regexValue;
    }
    final suffixValue = suffix;
    if (suffixValue != null) {
      map['suffix'] = suffixValue;
    }
    return map;
  }

  factory RouteSpecHttp2RouteMatchHeaderMatch.fromMap(
      Map<String, dynamic> map) {
    return RouteSpecHttp2RouteMatchHeaderMatch(
      exact: map['exact'] == null ? null : map['exact'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      range: map['range'] == null
          ? null
          : RouteSpecHttp2RouteMatchHeaderMatchRange.fromMap(
              (map['range'] as Map).cast<String, dynamic>()),
      regex: map['regex'] == null ? null : map['regex'] as String,
      suffix: map['suffix'] == null ? null : map['suffix'] as String,
    );
  }
}
