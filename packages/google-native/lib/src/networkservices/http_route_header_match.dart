// ignore_for_file: unused_element, unnecessary_cast

import 'http_route_header_match_integer_range.dart';

/// Specifies how to select a route rule based on HTTP request headers.
class HttpRouteHeaderMatch {
  /// The value of the header should match exactly the content of exact_match.
  final String? exactMatch;

  /// The name of the HTTP header to match against.
  final String? header;

  /// If specified, the match result will be inverted before checking. Default value is set to false.
  final bool? invertMatch;

  /// The value of the header must start with the contents of prefix_match.
  final String? prefixMatch;

  /// A header with header_name must exist. The match takes place whether or not the header has a value.
  final bool? presentMatch;

  /// If specified, the rule will match if the request header value is within the range.
  final HttpRouteHeaderMatchIntegerRange? rangeMatch;

  /// The value of the header must match the regular expression specified in regex_match. For regular expression grammar, please see: https://github.com/google/re2/wiki/Syntax
  final String? regexMatch;

  /// The value of the header must end with the contents of suffix_match.
  final String? suffixMatch;

  /// Creates a new [HttpRouteHeaderMatch].
  /// [exactMatch] The value of the header should match exactly the content of exact_match.
  /// [header] The name of the HTTP header to match against.
  /// [invertMatch] If specified, the match result will be inverted before checking. Default value is set to false.
  /// [prefixMatch] The value of the header must start with the contents of prefix_match.
  /// [presentMatch] A header with header_name must exist. The match takes place whether or not the header has a value.
  /// [rangeMatch] If specified, the rule will match if the request header value is within the range.
  /// [regexMatch] The value of the header must match the regular expression specified in regex_match. For regular expression grammar, please see: https://github.com/google/re2/wiki/Syntax
  /// [suffixMatch] The value of the header must end with the contents of suffix_match.
  HttpRouteHeaderMatch({
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
    return <String, dynamic>{
      'exactMatch': ?exactMatch,
      'header': ?header,
      'invertMatch': ?invertMatch,
      'prefixMatch': ?prefixMatch,
      'presentMatch': ?presentMatch,
      'rangeMatch': ?rangeMatch == null ? null : rangeMatch!.toMap(),
      'regexMatch': ?regexMatch,
      'suffixMatch': ?suffixMatch,
    };
  }

  factory HttpRouteHeaderMatch.fromMap(Map<String, dynamic> map) {
    return HttpRouteHeaderMatch(
      exactMatch: map['exactMatch'] == null
          ? null
          : map['exactMatch'] as String,
      header: map['header'] == null ? null : map['header'] as String,
      invertMatch: map['invertMatch'] == null
          ? null
          : map['invertMatch'] as bool,
      prefixMatch: map['prefixMatch'] == null
          ? null
          : map['prefixMatch'] as String,
      presentMatch: map['presentMatch'] == null
          ? null
          : map['presentMatch'] as bool,
      rangeMatch: map['rangeMatch'] == null
          ? null
          : HttpRouteHeaderMatchIntegerRange.fromMap(
              (map['rangeMatch'] as Map).cast<String, dynamic>(),
            ),
      regexMatch: map['regexMatch'] == null
          ? null
          : map['regexMatch'] as String,
      suffixMatch: map['suffixMatch'] == null
          ? null
          : map['suffixMatch'] as String,
    );
  }
}
