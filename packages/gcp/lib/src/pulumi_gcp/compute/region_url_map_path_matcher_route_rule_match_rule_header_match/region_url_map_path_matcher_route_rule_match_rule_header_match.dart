// ignore_for_file: unused_element, unnecessary_cast

import '../region_url_map_path_matcher_route_rule_match_rule_header_match_range_match/region_url_map_path_matcher_route_rule_match_rule_header_match_range_match.dart';

class RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatch {
  /// The value should exactly match contents of exactMatch. Only one of exactMatch,
  /// prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  final String? exactMatch;

  /// The name of the HTTP header to match. For matching against the HTTP request's
  /// authority, use a headerMatch with the header name ":authority". For matching a
  /// request's method, use the headerName ":method".
  final String headerName;

  /// If set to false, the headerMatch is considered a match if the match criteria
  /// above are met. If set to true, the headerMatch is considered a match if the
  /// match criteria above are NOT met. Defaults to false.
  final bool? invertMatch;

  /// The value of the header must start with the contents of prefixMatch. Only one of
  /// exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch
  /// must be set.
  final String? prefixMatch;

  /// A header with the contents of headerName must exist. The match takes place
  /// whether or not the request's header has a value or not. Only one of exactMatch,
  /// prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  final bool? presentMatch;

  /// The header value must be an integer and its value must be in the range specified
  /// in rangeMatch. If the header does not contain an integer, number or is empty,
  /// the match fails. For example for a range [-5, 0]
  /// * -3 will match
  /// * 0 will not match
  /// * 0.25 will not match
  /// * -3someString will not match.
  /// Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or
  /// rangeMatch must be set.
  /// Structure is documented below.
  final RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch?
      rangeMatch;

  /// The value of the header must match the regular expression specified in
  /// regexMatch. For regular expression grammar, please see:
  /// en.cppreference.com/w/cpp/regex/ecmascript  For matching against a port
  /// specified in the HTTP request, use a headerMatch with headerName set to PORT and
  /// a regular expression that satisfies the RFC2616 Host header's port specifier.
  /// Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or
  /// rangeMatch must be set.
  final String? regexMatch;

  /// The value of the header must end with the contents of suffixMatch. Only one of
  /// exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch
  /// must be set.
  final String? suffixMatch;

  RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatch({
    this.exactMatch,
    required this.headerName,
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
    map['headerName'] = headerName;
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

  factory RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatch.fromMap(
      Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatch(
      exactMatch:
          map['exactMatch'] == null ? null : map['exactMatch'] as String,
      headerName: map['headerName'] as String,
      invertMatch:
          map['invertMatch'] == null ? null : map['invertMatch'] as bool,
      prefixMatch:
          map['prefixMatch'] == null ? null : map['prefixMatch'] as String,
      presentMatch:
          map['presentMatch'] == null ? null : map['presentMatch'] as bool,
      rangeMatch: map['rangeMatch'] == null
          ? null
          : RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch
              .fromMap((map['rangeMatch'] as Map).cast<String, dynamic>()),
      regexMatch:
          map['regexMatch'] == null ? null : map['regexMatch'] as String,
      suffixMatch:
          map['suffixMatch'] == null ? null : map['suffixMatch'] as String,
    );
  }
}
