// ignore_for_file: unused_element, unnecessary_cast


/// A matching criteria which matches routes based on route prefix, community, and AS path.
class Criterion {
  /// List of AS paths which this criteria matches.
  final List<String>? asPath;
  /// List of BGP communities which this criteria matches.
  final List<String>? community;
  /// Match condition to apply RouteMap rules.
  final String? matchCondition;
  /// List of route prefixes which this criteria matches.
  final List<String>? routePrefix;

  /// Creates a new [Criterion].
  /// [asPath] List of AS paths which this criteria matches.
  /// [community] List of BGP communities which this criteria matches.
  /// [matchCondition] Match condition to apply RouteMap rules.
  /// [routePrefix] List of route prefixes which this criteria matches.
  Criterion({
    this.asPath,
    this.community,
    this.matchCondition,
    this.routePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asPath': ?asPath,
      'community': ?community,
      'matchCondition': ?matchCondition,
      'routePrefix': ?routePrefix,
    };
  }

  factory Criterion.fromMap(Map<String, dynamic> map) {
    return Criterion(
      asPath: map['asPath'] == null ? null : (map['asPath'] as List).cast<String>(),
      community: map['community'] == null ? null : (map['community'] as List).cast<String>(),
      matchCondition: map['matchCondition'] == null ? null : map['matchCondition'] as String,
      routePrefix: map['routePrefix'] == null ? null : (map['routePrefix'] as List).cast<String>(),
    );
  }
}

