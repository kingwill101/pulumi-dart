// ignore_for_file: unused_element, unnecessary_cast


class V3CustomDomainRouteConfigRouteRewriteConfigWildcardRule {
  /// Matching Rules
  final String? match;
  /// Replace Rules
  final String? replacement;

  /// Creates a new [V3CustomDomainRouteConfigRouteRewriteConfigWildcardRule].
  /// [match] Matching Rules
  /// [replacement] Replace Rules
  V3CustomDomainRouteConfigRouteRewriteConfigWildcardRule({
    this.match,
    this.replacement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': ?match,
      'replacement': ?replacement,
    };
  }

  factory V3CustomDomainRouteConfigRouteRewriteConfigWildcardRule.fromMap(Map<String, dynamic> map) {
    return V3CustomDomainRouteConfigRouteRewriteConfigWildcardRule(
      match: map['match'] == null ? null : map['match'] as String,
      replacement: map['replacement'] == null ? null : map['replacement'] as String,
    );
  }
}

