// ignore_for_file: unused_element, unnecessary_cast

import 'http_route_redirect_response_code.dart';

/// The specification for redirecting traffic.
class HttpRouteRedirect {
  /// The host that will be used in the redirect response instead of the one that was supplied in the request.
  final String? hostRedirect;

  /// If set to true, the URL scheme in the redirected request is set to https. If set to false, the URL scheme of the redirected request will remain the same as that of the request. The default is set to false.
  final bool? httpsRedirect;

  /// The path that will be used in the redirect response instead of the one that was supplied in the request. path_redirect can not be supplied together with prefix_redirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.
  final String? pathRedirect;

  /// The port that will be used in the redirected request instead of the one that was supplied in the request.
  final int? portRedirect;

  /// Indicates that during redirection, the matched prefix (or path) should be swapped with this value. This option allows URLs be dynamically created based on the request.
  final String? prefixRewrite;

  /// The HTTP Status code to use for the redirect.
  final HttpRouteRedirectResponseCode? responseCode;

  /// if set to true, any accompanying query portion of the original URL is removed prior to redirecting the request. If set to false, the query portion of the original URL is retained. The default is set to false.
  final bool? stripQuery;

  /// Creates a new [HttpRouteRedirect].
  /// [hostRedirect] The host that will be used in the redirect response instead of the one that was supplied in the request.
  /// [httpsRedirect] If set to true, the URL scheme in the redirected request is set to https. If set to false, the URL scheme of the redirected request will remain the same as that of the request. The default is set to false.
  /// [pathRedirect] The path that will be used in the redirect response instead of the one that was supplied in the request. path_redirect can not be supplied together with prefix_redirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.
  /// [portRedirect] The port that will be used in the redirected request instead of the one that was supplied in the request.
  /// [prefixRewrite] Indicates that during redirection, the matched prefix (or path) should be swapped with this value. This option allows URLs be dynamically created based on the request.
  /// [responseCode] The HTTP Status code to use for the redirect.
  /// [stripQuery] if set to true, any accompanying query portion of the original URL is removed prior to redirecting the request. If set to false, the query portion of the original URL is retained. The default is set to false.
  HttpRouteRedirect({
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
      map['responseCode'] = responseCodeValue.value;
    }
    final stripQueryValue = stripQuery;
    if (stripQueryValue != null) {
      map['stripQuery'] = stripQueryValue;
    }
    return map;
  }

  factory HttpRouteRedirect.fromMap(Map<String, dynamic> map) {
    return HttpRouteRedirect(
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
      responseCode: map['responseCode'] == null
          ? null
          : HttpRouteRedirectResponseCode.fromValue(
              map['responseCode'] as String),
      stripQuery: map['stripQuery'] == null ? null : map['stripQuery'] as bool,
    );
  }
}
