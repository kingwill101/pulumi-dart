// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A matching criteria which matches routes based on route prefix, community, and AS path.
class CriterionResponse {
  /// List of AS paths which this criteria matches.
  final pulumi.Input<List<String>>? asPath;
  /// List of BGP communities which this criteria matches.
  final pulumi.Input<List<String>>? community;
  /// Match condition to apply RouteMap rules.
  final pulumi.Input<String>? matchCondition;
  /// List of route prefixes which this criteria matches.
  final pulumi.Input<List<String>>? routePrefix;

  /// Creates a new [CriterionResponse].
  /// [asPath] List of AS paths which this criteria matches.
  /// [community] List of BGP communities which this criteria matches.
  /// [matchCondition] Match condition to apply RouteMap rules.
  /// [routePrefix] List of route prefixes which this criteria matches.
  CriterionResponse({
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

  factory CriterionResponse.fromMap(Map<String, dynamic> map) {
    return CriterionResponse(
      asPath: map['asPath'] == null ? null : ((map['asPath'] as List).cast<String>()).input(),
      community: map['community'] == null ? null : ((map['community'] as List).cast<String>()).input(),
      matchCondition: map['matchCondition'] == null ? null : (map['matchCondition'] as String).input(),
      routePrefix: map['routePrefix'] == null ? null : ((map['routePrefix'] as List).cast<String>()).input(),
    );
  }
}

