// ignore_for_file: unused_element, unnecessary_cast

import 'http_route_rule_match_header_range_match.dart';

class HttpRouteRuleMatchHeader {
  /// The value of the header should match exactly the content of exactMatch.
  final String? exactMatch;

  /// The name of the HTTP header to match against.
  final String? header;

  /// If specified, the match result will be inverted before checking. Default value is set to false.
  final bool? invertMatch;

  /// The value of the header must start with the contents of prefixMatch.
  final String? prefixMatch;

  /// A header with headerName must exist. The match takes place whether or not the header has a value.
  final bool? presentMatch;

  /// If specified, the rule will match if the request header value is within the range.
  /// Structure is documented below.
  final HttpRouteRuleMatchHeaderRangeMatch? rangeMatch;

  /// The value of the header must match the regular expression specified in regexMatch.
  final String? regexMatch;

  /// The value of the header must end with the contents of suffixMatch.
  final String? suffixMatch;

  /// Creates a new [HttpRouteRuleMatchHeader].
  /// [exactMatch] The value of the header should match exactly the content of exactMatch.
  /// [header] The name of the HTTP header to match against.
  /// [invertMatch] If specified, the match result will be inverted before checking. Default value is set to false.
  /// [prefixMatch] The value of the header must start with the contents of prefixMatch.
  /// [presentMatch] A header with headerName must exist. The match takes place whether or not the header has a value.
  /// [rangeMatch] If specified, the rule will match if the request header value is within the range.
  /// [regexMatch] The value of the header must match the regular expression specified in regexMatch.
  /// [suffixMatch] The value of the header must end with the contents of suffixMatch.
  HttpRouteRuleMatchHeader({
    this.exactMatch,
    this.header,
    this.invertMatch,
    this.prefixMatch,
    this.presentMatch,
    this.rangeMatch,
    this.regexMatch,
    this.suffixMatch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exactMatchValue = exactMatch;
    if (exactMatchValue != null) {
      map['exactMatch'] = exactMatchValue;
    }
    final headerValue = header;
    if (headerValue != null) {
      map['header'] = headerValue;
    }
    final invertMatchValue = invertMatch;
    if (invertMatchValue != null) {
      map['invertMatch'] = invertMatchValue;
    }
    final prefixMatchValue = prefixMatch;
    if (prefixMatchValue != null) {
      map['prefixMatch'] = prefixMatchValue;
    }
    final presentMatchValue = presentMatch;
    if (presentMatchValue != null) {
      map['presentMatch'] = presentMatchValue;
    }
    final rangeMatchValue = rangeMatch;
    if (rangeMatchValue != null) {
      map['rangeMatch'] = rangeMatchValue.toMap();
    }
    final regexMatchValue = regexMatch;
    if (regexMatchValue != null) {
      map['regexMatch'] = regexMatchValue;
    }
    final suffixMatchValue = suffixMatch;
    if (suffixMatchValue != null) {
      map['suffixMatch'] = suffixMatchValue;
    }
    return map;
  }

  factory HttpRouteRuleMatchHeader.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleMatchHeader(
      exactMatch:
          map['exactMatch'] == null ? null : map['exactMatch'] as String,
      header: map['header'] == null ? null : map['header'] as String,
      invertMatch:
          map['invertMatch'] == null ? null : map['invertMatch'] as bool,
      prefixMatch:
          map['prefixMatch'] == null ? null : map['prefixMatch'] as String,
      presentMatch:
          map['presentMatch'] == null ? null : map['presentMatch'] as bool,
      rangeMatch: map['rangeMatch'] == null
          ? null
          : HttpRouteRuleMatchHeaderRangeMatch.fromMap(
              (map['rangeMatch'] as Map).cast<String, dynamic>()),
      regexMatch:
          map['regexMatch'] == null ? null : map['regexMatch'] as String,
      suffixMatch:
          map['suffixMatch'] == null ? null : map['suffixMatch'] as String,
    );
  }
}
