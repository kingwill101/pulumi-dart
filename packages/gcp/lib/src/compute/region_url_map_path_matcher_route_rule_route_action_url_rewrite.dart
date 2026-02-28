// ignore_for_file: unused_element, unnecessary_cast


class RegionUrlMapPathMatcherRouteRuleRouteActionUrlRewrite {
  /// Before forwarding the request to the selected service, the request's host header is replaced with contents of hostRewrite.
  /// The value must be from 1 to 255 characters.
  final String? hostRewrite;
  /// Before forwarding the request to the selected backend service, the matching portion of the request's path is replaced by pathPrefixRewrite.
  /// The value must be from 1 to 1024 characters.
  final String? pathPrefixRewrite;
  /// If specified, the pattern rewrites the URL path (based on the :path header) using the HTTP template syntax.
  /// A corresponding pathTemplateMatch must be specified. Any template variables must exist in the pathTemplateMatch field.
  /// * At least one variable must be specified in the pathTemplateMatch field
  /// * You can omit variables from the rewritten URL
  /// * The * and ** operators cannot be matched unless they have a corresponding variable name - e.g. {format=*} or {var=**}.
  /// For example, a pathTemplateMatch of /static/{format=**} could be rewritten as /static/content/{format} to prefix
  /// /content to the URL. Variables can also be re-ordered in a rewrite, so that /{country}/{format}/{suffix=**} can be
  /// rewritten as /content/{format}/{country}/{suffix}.
  /// At least one non-empty routeRules[].matchRules[].path_template_match is required.
  /// Only one of pathPrefixRewrite or pathTemplateRewrite may be specified.
  final String? pathTemplateRewrite;

  /// Creates a new [RegionUrlMapPathMatcherRouteRuleRouteActionUrlRewrite].
  /// [hostRewrite] Before forwarding the request to the selected service, the request's host header is replaced with contents of hostRewrite.
  /// [pathPrefixRewrite] Before forwarding the request to the selected backend service, the matching portion of the request's path is replaced by pathPrefixRewrite.
  /// [pathTemplateRewrite] If specified, the pattern rewrites the URL path (based on the :path header) using the HTTP template syntax.
  RegionUrlMapPathMatcherRouteRuleRouteActionUrlRewrite({
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

  factory RegionUrlMapPathMatcherRouteRuleRouteActionUrlRewrite.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherRouteRuleRouteActionUrlRewrite(
      hostRewrite: map['hostRewrite'] == null ? null : map['hostRewrite'] as String,
      pathPrefixRewrite: map['pathPrefixRewrite'] == null ? null : map['pathPrefixRewrite'] as String,
      pathTemplateRewrite: map['pathTemplateRewrite'] == null ? null : map['pathTemplateRewrite'] as String,
    );
  }
}

