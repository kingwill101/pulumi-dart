// ignore_for_file: unused_element, unnecessary_cast

class HttpRouteRuleActionUrlRewrite {
  /// Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.
  final String? hostRewrite;

  /// Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.
  final String? pathPrefixRewrite;

  /// Creates a new [HttpRouteRuleActionUrlRewrite].
  /// [hostRewrite] Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.
  /// [pathPrefixRewrite] Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.
  HttpRouteRuleActionUrlRewrite({
    this.hostRewrite,
    this.pathPrefixRewrite,
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
    return map;
  }

  factory HttpRouteRuleActionUrlRewrite.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleActionUrlRewrite(
      hostRewrite:
          map['hostRewrite'] == null ? null : map['hostRewrite'] as String,
      pathPrefixRewrite: map['pathPrefixRewrite'] == null
          ? null
          : map['pathPrefixRewrite'] as String,
    );
  }
}
