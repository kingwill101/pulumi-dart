// ignore_for_file: unused_element, unnecessary_cast

import 'urlmap_path_matcher_route_rule_match_rule_header_match_range_match.dart';

class URLMapPathMatcherRouteRuleMatchRuleHeaderMatch {
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
  /// the match fails. For example for a range [-5, 0]   - -3 will match.  - 0 will
  /// not match.  - 0.25 will not match.  - -3someString will not match.   Only one of
  /// exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch
  /// must be set.
  /// Structure is documented below.
  final URLMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch? rangeMatch;
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

  /// Creates a new [URLMapPathMatcherRouteRuleMatchRuleHeaderMatch].
  /// [exactMatch] The value should exactly match contents of exactMatch. Only one of exactMatch,
  /// [headerName] The name of the HTTP header to match. For matching against the HTTP request's
  /// [invertMatch] If set to false, the headerMatch is considered a match if the match criteria
  /// [prefixMatch] The value of the header must start with the contents of prefixMatch. Only one of
  /// [presentMatch] A header with the contents of headerName must exist. The match takes place
  /// [rangeMatch] The header value must be an integer and its value must be in the range specified
  /// [regexMatch] The value of the header must match the regular expression specified in
  /// [suffixMatch] The value of the header must end with the contents of suffixMatch. Only one of
  URLMapPathMatcherRouteRuleMatchRuleHeaderMatch({
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
    return <String, dynamic>{
      'exactMatch': ?exactMatch,
      'headerName': headerName,
      'invertMatch': ?invertMatch,
      'prefixMatch': ?prefixMatch,
      'presentMatch': ?presentMatch,
      'rangeMatch': ?rangeMatch == null ? null : rangeMatch!.toMap(),
      'regexMatch': ?regexMatch,
      'suffixMatch': ?suffixMatch,
    };
  }

  factory URLMapPathMatcherRouteRuleMatchRuleHeaderMatch.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleMatchRuleHeaderMatch(
      exactMatch: map['exactMatch'] == null ? null : map['exactMatch'] as String,
      headerName: map['headerName'] as String,
      invertMatch: map['invertMatch'] == null ? null : map['invertMatch'] as bool,
      prefixMatch: map['prefixMatch'] == null ? null : map['prefixMatch'] as String,
      presentMatch: map['presentMatch'] == null ? null : map['presentMatch'] as bool,
      rangeMatch: map['rangeMatch'] == null ? null : URLMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch.fromMap((map['rangeMatch'] as Map).cast<String, dynamic>()),
      regexMatch: map['regexMatch'] == null ? null : map['regexMatch'] as String,
      suffixMatch: map['suffixMatch'] == null ? null : map['suffixMatch'] as String,
    );
  }
}

