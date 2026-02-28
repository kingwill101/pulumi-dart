// ignore_for_file: unused_element, unnecessary_cast

class EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch {
  /// The queryParameterMatch matches if the value of the parameter exactly matches the contents of exactMatch.
  final String? exactMatch;

  /// The name of the query parameter to match. The query parameter must exist in the request, in the absence of which the request match fails.
  final String name;

  /// Specifies that the queryParameterMatch matches if the request contains the query parameter, irrespective of whether the parameter has a value or not.
  final bool? presentMatch;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch].
  /// [exactMatch] The queryParameterMatch matches if the value of the parameter exactly matches the contents of exactMatch.
  /// [name] The name of the query parameter to match. The query parameter must exist in the request, in the absence of which the request match fails.
  /// [presentMatch] Specifies that the queryParameterMatch matches if the request contains the query parameter, irrespective of whether the parameter has a value or not.
  EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch({
    this.exactMatch,
    required this.name,
    this.presentMatch,
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
    return map;
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch.fromMap(
      Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleQueryParameterMatch(
      exactMatch:
          map['exactMatch'] == null ? null : map['exactMatch'] as String,
      name: map['name'] as String,
      presentMatch:
          map['presentMatch'] == null ? null : map['presentMatch'] as bool,
    );
  }
}
