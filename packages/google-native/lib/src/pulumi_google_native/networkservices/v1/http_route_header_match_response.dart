// ignore_for_file: unused_element, unnecessary_cast

import 'http_route_header_match_integer_range_response.dart';

/// Specifies how to select a route rule based on HTTP request headers.
class HttpRouteHeaderMatchResponse {
  /// The value of the header should match exactly the content of exact_match.
  final String exactMatch;

  /// The name of the HTTP header to match against.
  final String header;

  /// If specified, the match result will be inverted before checking. Default value is set to false.
  final bool invertMatch;

  /// The value of the header must start with the contents of prefix_match.
  final String prefixMatch;

  /// A header with header_name must exist. The match takes place whether or not the header has a value.
  final bool presentMatch;

  /// If specified, the rule will match if the request header value is within the range.
  final HttpRouteHeaderMatchIntegerRangeResponse rangeMatch;

  /// The value of the header must match the regular expression specified in regex_match. For regular expression grammar, please see: https://github.com/google/re2/wiki/Syntax
  final String regexMatch;

  /// The value of the header must end with the contents of suffix_match.
  final String suffixMatch;

  HttpRouteHeaderMatchResponse({
    required this.exactMatch,
    required this.header,
    required this.invertMatch,
    required this.prefixMatch,
    required this.presentMatch,
    required this.rangeMatch,
    required this.regexMatch,
    required this.suffixMatch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exactMatch'] = exactMatch;
    map['header'] = header;
    map['invertMatch'] = invertMatch;
    map['prefixMatch'] = prefixMatch;
    map['presentMatch'] = presentMatch;
    map['rangeMatch'] = rangeMatch.toMap();
    map['regexMatch'] = regexMatch;
    map['suffixMatch'] = suffixMatch;
    return map;
  }

  factory HttpRouteHeaderMatchResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteHeaderMatchResponse(
      exactMatch: map['exactMatch'] as String,
      header: map['header'] as String,
      invertMatch: map['invertMatch'] as bool,
      prefixMatch: map['prefixMatch'] as String,
      presentMatch: map['presentMatch'] as bool,
      rangeMatch: HttpRouteHeaderMatchIntegerRangeResponse.fromMap(
          (map['rangeMatch'] as Map).cast<String, dynamic>()),
      regexMatch: map['regexMatch'] as String,
      suffixMatch: map['suffixMatch'] as String,
    );
  }
}
