// ignore_for_file: unused_element, unnecessary_cast

class EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch {
  /// The value of the header should exactly match contents of exactMatch.
  final String? exactMatch;

  /// The header name to match on.
  final String headerName;

  /// If set to false (default), the headerMatch is considered a match if the match criteria above are met.
  /// If set to true, the headerMatch is considered a match if the match criteria above are NOT met.
  final bool? invertMatch;

  /// The value of the header must start with the contents of prefixMatch.
  final String? prefixMatch;

  /// A header with the contents of headerName must exist. The match takes place whether or not the request's header has a value.
  final bool? presentMatch;

  /// The value of the header must end with the contents of suffixMatch.
  final String? suffixMatch;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch].
  /// [exactMatch] The value of the header should exactly match contents of exactMatch.
  /// [headerName] The header name to match on.
  /// [invertMatch] If set to false (default), the headerMatch is considered a match if the match criteria above are met.
  /// [prefixMatch] The value of the header must start with the contents of prefixMatch.
  /// [presentMatch] A header with the contents of headerName must exist. The match takes place whether or not the request's header has a value.
  /// [suffixMatch] The value of the header must end with the contents of suffixMatch.
  EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch({
    this.exactMatch,
    required this.headerName,
    this.invertMatch,
    this.prefixMatch,
    this.presentMatch,
    this.suffixMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactMatch': ?exactMatch,
      'headerName': headerName,
      'invertMatch': ?invertMatch,
      'prefixMatch': ?prefixMatch,
      'presentMatch': ?presentMatch,
      'suffixMatch': ?suffixMatch,
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch(
      exactMatch: map['exactMatch'] == null
          ? null
          : map['exactMatch'] as String,
      headerName: map['headerName'] as String,
      invertMatch: map['invertMatch'] == null
          ? null
          : map['invertMatch'] as bool,
      prefixMatch: map['prefixMatch'] == null
          ? null
          : map['prefixMatch'] as String,
      presentMatch: map['presentMatch'] == null
          ? null
          : map['presentMatch'] as bool,
      suffixMatch: map['suffixMatch'] == null
          ? null
          : map['suffixMatch'] as String,
    );
  }
}
