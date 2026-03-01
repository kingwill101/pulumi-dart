// ignore_for_file: unused_element, unnecessary_cast


class RouteMapRuleMatchCriterion {
  /// A list of AS paths which this criterion matches.
  final List<String>? asPaths;
  /// A list of BGP communities which this criterion matches.
  final List<String>? communities;
  /// The match condition to apply the rule of the Route Map. Possible values are `Contains`, `Equals`, `NotContains`, `NotEquals` and `Unknown`.
  final String matchCondition;
  /// A list of route prefixes which this criterion matches.
  final List<String>? routePrefixes;

  /// Creates a new [RouteMapRuleMatchCriterion].
  /// [asPaths] A list of AS paths which this criterion matches.
  /// [communities] A list of BGP communities which this criterion matches.
  /// [matchCondition] The match condition to apply the rule of the Route Map. Possible values are `Contains`, `Equals`, `NotContains`, `NotEquals` and `Unknown`.
  /// [routePrefixes] A list of route prefixes which this criterion matches.
  RouteMapRuleMatchCriterion({
    this.asPaths,
    this.communities,
    required this.matchCondition,
    this.routePrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asPaths': ?asPaths,
      'communities': ?communities,
      'matchCondition': matchCondition,
      'routePrefixes': ?routePrefixes,
    };
  }

  factory RouteMapRuleMatchCriterion.fromMap(Map<String, dynamic> map) {
    return RouteMapRuleMatchCriterion(
      asPaths: map['asPaths'] == null ? null : (map['asPaths'] as List).cast<String>(),
      communities: map['communities'] == null ? null : (map['communities'] as List).cast<String>(),
      matchCondition: map['matchCondition'] as String,
      routePrefixes: map['routePrefixes'] == null ? null : (map['routePrefixes'] as List).cast<String>(),
    );
  }
}

