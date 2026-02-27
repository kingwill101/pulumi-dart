// ignore_for_file: unused_element, unnecessary_cast

/// The specification for redirecting traffic.
class HttpRouteRedirectResponseNetworkservicesV1beta1 {
  /// The host that will be used in the redirect response instead of the one that was supplied in the request.
  final String hostRedirect;

  /// If set to true, the URL scheme in the redirected request is set to https. If set to false, the URL scheme of the redirected request will remain the same as that of the request. The default is set to false.
  final bool httpsRedirect;

  /// The path that will be used in the redirect response instead of the one that was supplied in the request. path_redirect can not be supplied together with prefix_redirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.
  final String pathRedirect;

  /// The port that will be used in the redirected request instead of the one that was supplied in the request.
  final int portRedirect;

  /// Indicates that during redirection, the matched prefix (or path) should be swapped with this value. This option allows URLs be dynamically created based on the request.
  final String prefixRewrite;

  /// The HTTP Status code to use for the redirect.
  final String responseCode;

  /// if set to true, any accompanying query portion of the original URL is removed prior to redirecting the request. If set to false, the query portion of the original URL is retained. The default is set to false.
  final bool stripQuery;

  HttpRouteRedirectResponseNetworkservicesV1beta1({
    required this.hostRedirect,
    required this.httpsRedirect,
    required this.pathRedirect,
    required this.portRedirect,
    required this.prefixRewrite,
    required this.responseCode,
    required this.stripQuery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostRedirect'] = hostRedirect;
    map['httpsRedirect'] = httpsRedirect;
    map['pathRedirect'] = pathRedirect;
    map['portRedirect'] = portRedirect;
    map['prefixRewrite'] = prefixRewrite;
    map['responseCode'] = responseCode;
    map['stripQuery'] = stripQuery;
    return map;
  }

  factory HttpRouteRedirectResponseNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteRedirectResponseNetworkservicesV1beta1(
      hostRedirect: map['hostRedirect'] as String,
      httpsRedirect: map['httpsRedirect'] as bool,
      pathRedirect: map['pathRedirect'] as String,
      portRedirect: map['portRedirect'] as int,
      prefixRewrite: map['prefixRewrite'] as String,
      responseCode: map['responseCode'] as String,
      stripQuery: map['stripQuery'] as bool,
    );
  }
}
