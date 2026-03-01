// ignore_for_file: unused_element, unnecessary_cast

class EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewrite {
  /// Prior to forwarding the request to the selected origin, the request's host header is replaced with contents of hostRewrite.
  final String? hostRewrite;

  /// Prior to forwarding the request to the selected origin, the matching portion of the request's path is replaced by pathPrefixRewrite.
  final String? pathPrefixRewrite;

  /// Prior to forwarding the request to the selected origin, if the
  /// request matched a pathTemplateMatch, the matching portion of the
  /// request's path is replaced re-written using the pattern specified
  /// by pathTemplateRewrite.
  /// pathTemplateRewrite must be between 1 and 255 characters
  /// (inclusive), must start with a '/', and must only use variables
  /// captured by the route's pathTemplate matchers.
  /// pathTemplateRewrite may only be used when all of a route's
  /// MatchRules specify pathTemplate.
  /// Only one of pathPrefixRewrite and pathTemplateRewrite may be
  /// specified.
  final String? pathTemplateRewrite;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewrite].
  /// [hostRewrite] Prior to forwarding the request to the selected origin, the request's host header is replaced with contents of hostRewrite.
  /// [pathPrefixRewrite] Prior to forwarding the request to the selected origin, the matching portion of the request's path is replaced by pathPrefixRewrite.
  /// [pathTemplateRewrite] Prior to forwarding the request to the selected origin, if the
  EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewrite({
    this.hostRewrite,
    this.pathPrefixRewrite,
    this.pathTemplateRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRewrite': ?hostRewrite,
      'pathPrefixRewrite': ?pathPrefixRewrite,
      'pathTemplateRewrite': ?pathTemplateRewrite,
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewrite.fromMap(
    Map<String, dynamic> map,
  ) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewrite(
      hostRewrite: map['hostRewrite'] == null
          ? null
          : map['hostRewrite'] as String,
      pathPrefixRewrite: map['pathPrefixRewrite'] == null
          ? null
          : map['pathPrefixRewrite'] as String,
      pathTemplateRewrite: map['pathTemplateRewrite'] == null
          ? null
          : map['pathTemplateRewrite'] as String,
    );
  }
}
