// ignore_for_file: unused_element, unnecessary_cast

class RegionUrlMapPathMatcherDefaultUrlRedirect {
  /// The host that will be used in the redirect response instead of the one that was
  /// supplied in the request. The value must be between 1 and 255 characters.
  final String? hostRedirect;

  /// If set to true, the URL scheme in the redirected request is set to https. If set to
  /// false, the URL scheme of the redirected request will remain the same as that of the
  /// request. This must only be set for UrlMaps used in TargetHttpProxys. Setting this
  /// true for TargetHttpsProxy is not permitted. The default is set to false.
  final bool? httpsRedirect;

  /// The path that will be used in the redirect response instead of the one that was
  /// supplied in the request. pathRedirect cannot be supplied together with
  /// prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the
  /// original request will be used for the redirect. The value must be between 1 and 1024
  /// characters.
  final String? pathRedirect;

  /// The prefix that replaces the prefixMatch specified in the HttpRouteRuleMatch,
  /// retaining the remaining portion of the URL before redirecting the request.
  /// prefixRedirect cannot be supplied together with pathRedirect. Supply one alone or
  /// neither. If neither is supplied, the path of the original request will be used for
  /// the redirect. The value must be between 1 and 1024 characters.
  final String? prefixRedirect;

  /// The HTTP Status code to use for this RedirectAction. Supported values are:
  /// * MOVED_PERMANENTLY_DEFAULT, which is the default value and corresponds to 301.
  /// * FOUND, which corresponds to 302.
  /// * SEE_OTHER which corresponds to 303.
  /// * TEMPORARY_REDIRECT, which corresponds to 307. In this case, the request method
  /// will be retained.
  /// * PERMANENT_REDIRECT, which corresponds to 308. In this case,
  /// the request method will be retained.
  final String? redirectResponseCode;

  /// If set to true, any accompanying query portion of the original URL is removed prior
  /// to redirecting the request. If set to false, the query portion of the original URL is
  /// retained.
  /// This field is required to ensure an empty block is not set. The normal default value is false.
  final bool stripQuery;

  /// Creates a new [RegionUrlMapPathMatcherDefaultUrlRedirect].
  /// [hostRedirect] The host that will be used in the redirect response instead of the one that was
  /// [httpsRedirect] If set to true, the URL scheme in the redirected request is set to https. If set to
  /// [pathRedirect] The path that will be used in the redirect response instead of the one that was
  /// [prefixRedirect] The prefix that replaces the prefixMatch specified in the HttpRouteRuleMatch,
  /// [redirectResponseCode] The HTTP Status code to use for this RedirectAction. Supported values are:
  /// [stripQuery] If set to true, any accompanying query portion of the original URL is removed prior
  RegionUrlMapPathMatcherDefaultUrlRedirect({
    this.hostRedirect,
    this.httpsRedirect,
    this.pathRedirect,
    this.prefixRedirect,
    this.redirectResponseCode,
    required this.stripQuery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostRedirectValue = hostRedirect;
    if (hostRedirectValue != null) {
      map['hostRedirect'] = hostRedirectValue;
    }
    final httpsRedirectValue = httpsRedirect;
    if (httpsRedirectValue != null) {
      map['httpsRedirect'] = httpsRedirectValue;
    }
    final pathRedirectValue = pathRedirect;
    if (pathRedirectValue != null) {
      map['pathRedirect'] = pathRedirectValue;
    }
    final prefixRedirectValue = prefixRedirect;
    if (prefixRedirectValue != null) {
      map['prefixRedirect'] = prefixRedirectValue;
    }
    final redirectResponseCodeValue = redirectResponseCode;
    if (redirectResponseCodeValue != null) {
      map['redirectResponseCode'] = redirectResponseCodeValue;
    }
    map['stripQuery'] = stripQuery;
    return map;
  }

  factory RegionUrlMapPathMatcherDefaultUrlRedirect.fromMap(
      Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherDefaultUrlRedirect(
      hostRedirect:
          map['hostRedirect'] == null ? null : map['hostRedirect'] as String,
      httpsRedirect:
          map['httpsRedirect'] == null ? null : map['httpsRedirect'] as bool,
      pathRedirect:
          map['pathRedirect'] == null ? null : map['pathRedirect'] as String,
      prefixRedirect: map['prefixRedirect'] == null
          ? null
          : map['prefixRedirect'] as String,
      redirectResponseCode: map['redirectResponseCode'] == null
          ? null
          : map['redirectResponseCode'] as String,
      stripQuery: map['stripQuery'] as bool,
    );
  }
}
