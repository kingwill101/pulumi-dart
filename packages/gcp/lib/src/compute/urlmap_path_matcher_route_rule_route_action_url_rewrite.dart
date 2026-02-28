// ignore_for_file: unused_element, unnecessary_cast

class URLMapPathMatcherRouteRuleRouteActionUrlRewrite {
  /// Prior to forwarding the request to the selected service, the request's host header is replaced
  /// with contents of hostRewrite.
  /// The value must be between 1 and 255 characters.
  final String? hostRewrite;

  /// Prior to forwarding the request to the selected backend service, the matching portion of the
  /// request's path is replaced by pathPrefixRewrite.
  /// The value must be between 1 and 1024 characters.
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

  /// Creates a new [URLMapPathMatcherRouteRuleRouteActionUrlRewrite].
  /// [hostRewrite] Prior to forwarding the request to the selected service, the request's host header is replaced
  /// [pathPrefixRewrite] Prior to forwarding the request to the selected backend service, the matching portion of the
  /// [pathTemplateRewrite] Prior to forwarding the request to the selected origin, if the
  URLMapPathMatcherRouteRuleRouteActionUrlRewrite({
    this.hostRewrite,
    this.pathPrefixRewrite,
    this.pathTemplateRewrite,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostRewriteValue = hostRewrite;
    if (hostRewriteValue != null) {
      map['hostRewrite'] = hostRewriteValue;
    }
    final pathPrefixRewriteValue = pathPrefixRewrite;
    if (pathPrefixRewriteValue != null) {
      map['pathPrefixRewrite'] = pathPrefixRewriteValue;
    }
    final pathTemplateRewriteValue = pathTemplateRewrite;
    if (pathTemplateRewriteValue != null) {
      map['pathTemplateRewrite'] = pathTemplateRewriteValue;
    }
    return map;
  }

  factory URLMapPathMatcherRouteRuleRouteActionUrlRewrite.fromMap(
      Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleRouteActionUrlRewrite(
      hostRewrite:
          map['hostRewrite'] == null ? null : map['hostRewrite'] as String,
      pathPrefixRewrite: map['pathPrefixRewrite'] == null
          ? null
          : map['pathPrefixRewrite'] as String,
      pathTemplateRewrite: map['pathTemplateRewrite'] == null
          ? null
          : map['pathTemplateRewrite'] as String,
    );
  }
}
