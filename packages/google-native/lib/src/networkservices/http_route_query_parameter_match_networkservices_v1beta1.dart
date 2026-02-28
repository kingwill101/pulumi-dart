// ignore_for_file: unused_element, unnecessary_cast

/// Specifications to match a query parameter in the request.
class HttpRouteQueryParameterMatchNetworkservicesV1beta1 {
  /// The value of the query parameter must exactly match the contents of exact_match. Only one of exact_match, regex_match, or present_match must be set.
  final String? exactMatch;

  /// Specifies that the QueryParameterMatcher matches if request contains query parameter, irrespective of whether the parameter has a value or not. Only one of exact_match, regex_match, or present_match must be set.
  final bool? presentMatch;

  /// The name of the query parameter to match.
  final String? queryParameter;

  /// The value of the query parameter must match the regular expression specified by regex_match. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of exact_match, regex_match, or present_match must be set.
  final String? regexMatch;

  /// Creates a new [HttpRouteQueryParameterMatchNetworkservicesV1beta1].
  /// [exactMatch] The value of the query parameter must exactly match the contents of exact_match. Only one of exact_match, regex_match, or present_match must be set.
  /// [presentMatch] Specifies that the QueryParameterMatcher matches if request contains query parameter, irrespective of whether the parameter has a value or not. Only one of exact_match, regex_match, or present_match must be set.
  /// [queryParameter] The name of the query parameter to match.
  /// [regexMatch] The value of the query parameter must match the regular expression specified by regex_match. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of exact_match, regex_match, or present_match must be set.
  HttpRouteQueryParameterMatchNetworkservicesV1beta1({
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

  factory HttpRouteQueryParameterMatchNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteQueryParameterMatchNetworkservicesV1beta1(
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
