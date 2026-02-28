// ignore_for_file: unused_element, unnecessary_cast

class HttpRouteRuleActionRedirect {
  /// The host that will be used in the redirect response instead of the one that was supplied in the request.
  final String? hostRedirect;

  /// If set to true, the URL scheme in the redirected request is set to https.
  final bool? httpsRedirect;

  /// The path that will be used in the redirect response instead of the one that was supplied in the request. pathRedirect can not be supplied together with prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.
  final String? pathRedirect;

  /// The port that will be used in the redirected request instead of the one that was supplied in the request.
  final int? portRedirect;

  /// Indicates that during redirection, the matched prefix (or path) should be swapped with this value.
  final String? prefixRewrite;

  /// The HTTP Status code to use for the redirect.
  final String? responseCode;

  /// If set to true, any accompanying query portion of the original URL is removed prior to redirecting the request.
  final bool? stripQuery;

  /// Creates a new [HttpRouteRuleActionRedirect].
  /// [hostRedirect] The host that will be used in the redirect response instead of the one that was supplied in the request.
  /// [httpsRedirect] If set to true, the URL scheme in the redirected request is set to https.
  /// [pathRedirect] The path that will be used in the redirect response instead of the one that was supplied in the request. pathRedirect can not be supplied together with prefixRedirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.
  /// [portRedirect] The port that will be used in the redirected request instead of the one that was supplied in the request.
  /// [prefixRewrite] Indicates that during redirection, the matched prefix (or path) should be swapped with this value.
  /// [responseCode] The HTTP Status code to use for the redirect.
  /// [stripQuery] If set to true, any accompanying query portion of the original URL is removed prior to redirecting the request.
  HttpRouteRuleActionRedirect({
    this.hostRedirect,
    this.httpsRedirect,
    this.pathRedirect,
    this.portRedirect,
    this.prefixRewrite,
    this.responseCode,
    this.stripQuery,
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
    final portRedirectValue = portRedirect;
    if (portRedirectValue != null) {
      map['portRedirect'] = portRedirectValue;
    }
    final prefixRewriteValue = prefixRewrite;
    if (prefixRewriteValue != null) {
      map['prefixRewrite'] = prefixRewriteValue;
    }
    final responseCodeValue = responseCode;
    if (responseCodeValue != null) {
      map['responseCode'] = responseCodeValue;
    }
    final stripQueryValue = stripQuery;
    if (stripQueryValue != null) {
      map['stripQuery'] = stripQueryValue;
    }
    return map;
  }

  factory HttpRouteRuleActionRedirect.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleActionRedirect(
      hostRedirect:
          map['hostRedirect'] == null ? null : map['hostRedirect'] as String,
      httpsRedirect:
          map['httpsRedirect'] == null ? null : map['httpsRedirect'] as bool,
      pathRedirect:
          map['pathRedirect'] == null ? null : map['pathRedirect'] as String,
      portRedirect:
          map['portRedirect'] == null ? null : map['portRedirect'] as int,
      prefixRewrite:
          map['prefixRewrite'] == null ? null : map['prefixRewrite'] as String,
      responseCode:
          map['responseCode'] == null ? null : map['responseCode'] as String,
      stripQuery: map['stripQuery'] == null ? null : map['stripQuery'] as bool,
    );
  }
}
