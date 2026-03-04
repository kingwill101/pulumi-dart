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
      asPath: (() {
        final guardedValue = map['asPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      community: (() {
        final guardedValue = map['community'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      matchCondition: (() {
        final guardedValue = map['matchCondition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routePrefix: (() {
        final guardedValue = map['routePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
