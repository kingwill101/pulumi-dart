// ignore_for_file: unused_element, unnecessary_cast

/// Specifications to match a query parameter in the request.
class HttpRouteQueryParameterMatchResponse2 {
  /// The value of the query parameter must exactly match the contents of exact_match. Only one of exact_match, regex_match, or present_match must be set.
  final String exactMatch;

  /// Specifies that the QueryParameterMatcher matches if request contains query parameter, irrespective of whether the parameter has a value or not. Only one of exact_match, regex_match, or present_match must be set.
  final bool presentMatch;

  /// The name of the query parameter to match.
  final String queryParameter;

  /// The value of the query parameter must match the regular expression specified by regex_match. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of exact_match, regex_match, or present_match must be set.
  final String regexMatch;

  HttpRouteQueryParameterMatchResponse2({
    required this.exactMatch,
    required this.presentMatch,
    required this.queryParameter,
    required this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exactMatch'] = exactMatch;
    map['presentMatch'] = presentMatch;
    map['queryParameter'] = queryParameter;
    map['regexMatch'] = regexMatch;
    return map;
  }

  factory HttpRouteQueryParameterMatchResponse2.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteQueryParameterMatchResponse2(
      exactMatch: map['exactMatch'] as String,
      presentMatch: map['presentMatch'] as bool,
      queryParameter: map['queryParameter'] as String,
      regexMatch: map['regexMatch'] as String,
    );
  }
}
