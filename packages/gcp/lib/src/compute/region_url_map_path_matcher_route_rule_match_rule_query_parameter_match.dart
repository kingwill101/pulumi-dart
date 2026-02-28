// ignore_for_file: unused_element, unnecessary_cast

class RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatch {
  /// The queryParameterMatch matches if the value of the parameter exactly matches
  /// the contents of exactMatch. Only one of presentMatch, exactMatch and regexMatch
  /// must be set.
  final String? exactMatch;

  /// The name of the query parameter to match. The query parameter must exist in the
  /// request, in the absence of which the request match fails.
  final String name;

  /// Specifies that the queryParameterMatch matches if the request contains the query
  /// parameter, irrespective of whether the parameter has a value or not. Only one of
  /// presentMatch, exactMatch and regexMatch must be set.
  final bool? presentMatch;

  /// The queryParameterMatch matches if the value of the parameter matches the
  /// regular expression specified by regexMatch. For the regular expression grammar,
  /// please see en.cppreference.com/w/cpp/regex/ecmascript  Only one of presentMatch,
  /// exactMatch and regexMatch must be set.
  final String? regexMatch;

  /// Creates a new [RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatch].
  /// [exactMatch] The queryParameterMatch matches if the value of the parameter exactly matches
  /// [name] The name of the query parameter to match. The query parameter must exist in the
  /// [presentMatch] Specifies that the queryParameterMatch matches if the request contains the query
  /// [regexMatch] The queryParameterMatch matches if the value of the parameter matches the
  RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatch({
    this.exactMatch,
    required this.name,
    this.presentMatch,
    this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exactMatchValue = exactMatch;
    if (exactMatchValue != null) {
      map['exactMatch'] = exactMatchValue;
    }
    map['name'] = name;
    final presentMatchValue = presentMatch;
    if (presentMatchValue != null) {
      map['presentMatch'] = presentMatchValue;
    }
    final regexMatchValue = regexMatch;
    if (regexMatchValue != null) {
      map['regexMatch'] = regexMatchValue;
    }
    return map;
  }

  factory RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatch.fromMap(
      Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherRouteRuleMatchRuleQueryParameterMatch(
      exactMatch:
          map['exactMatch'] == null ? null : map['exactMatch'] as String,
      name: map['name'] as String,
      presentMatch:
          map['presentMatch'] == null ? null : map['presentMatch'] as bool,
      regexMatch:
          map['regexMatch'] == null ? null : map['regexMatch'] as String,
    );
  }
}
