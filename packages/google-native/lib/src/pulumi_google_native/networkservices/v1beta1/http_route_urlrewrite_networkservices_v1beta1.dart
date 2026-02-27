// ignore_for_file: unused_element, unnecessary_cast

/// The specification for modifying the URL of the request, prior to forwarding the request to the destination.
class HttpRouteURLRewriteNetworkservicesV1beta1 {
  /// Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.
  final String? hostRewrite;

  /// Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.
  final String? pathPrefixRewrite;

  HttpRouteURLRewriteNetworkservicesV1beta1({
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

  factory HttpRouteURLRewriteNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteURLRewriteNetworkservicesV1beta1(
      hostRewrite:
          map['hostRewrite'] == null ? null : map['hostRewrite'] as String,
      pathPrefixRewrite: map['pathPrefixRewrite'] == null
          ? null
          : map['pathPrefixRewrite'] as String,
    );
  }
}
