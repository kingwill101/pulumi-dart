// ignore_for_file: unused_element, unnecessary_cast

class HttpRouteRuleMatchQueryParameter {
  /// The value of the query parameter must exactly match the contents of exactMatch.
  final String? exactMatch;

  /// Specifies that the QueryParameterMatcher matches if request contains query parameter, irrespective of whether the parameter has a value or not.
  final bool? presentMatch;

  /// The name of the query parameter to match.
  final String? queryParameter;

  /// The value of the query parameter must match the regular expression specified by regexMatch.For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax
  final String? regexMatch;

  /// Creates a new [HttpRouteRuleMatchQueryParameter].
  /// [exactMatch] The value of the query parameter must exactly match the contents of exactMatch.
  /// [presentMatch] Specifies that the QueryParameterMatcher matches if request contains query parameter, irrespective of whether the parameter has a value or not.
  /// [queryParameter] The name of the query parameter to match.
  /// [regexMatch] The value of the query parameter must match the regular expression specified by regexMatch.For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax
  HttpRouteRuleMatchQueryParameter({
    this.exactMatch,
    this.presentMatch,
    this.queryParameter,
    this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exactMatchValue = exactMatch;
    if (exactMatchValue != null) {
      map['exactMatch'] = exactMatchValue;
    }
    final presentMatchValue = presentMatch;
    if (presentMatchValue != null) {
      map['presentMatch'] = presentMatchValue;
    }
    final queryParameterValue = queryParameter;
    if (queryParameterValue != null) {
      map['queryParameter'] = queryParameterValue;
    }
    final regexMatchValue = regexMatch;
    if (regexMatchValue != null) {
      map['regexMatch'] = regexMatchValue;
    }
    return map;
  }

  factory HttpRouteRuleMatchQueryParameter.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleMatchQueryParameter(
      exactMatch:
          map['exactMatch'] == null ? null : map['exactMatch'] as String,
      presentMatch:
          map['presentMatch'] == null ? null : map['presentMatch'] as bool,
      queryParameter: map['queryParameter'] == null
          ? null
          : map['queryParameter'] as String,
      regexMatch:
          map['regexMatch'] == null ? null : map['regexMatch'] as String,
    );
  }
}
