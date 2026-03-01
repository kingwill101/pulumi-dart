// ignore_for_file: unused_element, unnecessary_cast


class EdgeCacheServiceRoutingPathMatcherRouteRuleRouteMethods {
  /// The non-empty set of HTTP methods that are allowed for this route.
  /// Any combination of "GET", "HEAD", "OPTIONS", "PUT", "POST", "DELETE", and "PATCH".
  final List<String>? allowedMethods;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleRouteMethods].
  /// [allowedMethods] The non-empty set of HTTP methods that are allowed for this route.
  EdgeCacheServiceRoutingPathMatcherRouteRuleRouteMethods({
    this.allowedMethods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMethods': ?allowedMethods,
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleRouteMethods.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleRouteMethods(
      allowedMethods: map['allowedMethods'] == null ? null : (map['allowedMethods'] as List).cast<String>(),
    );
  }
}

