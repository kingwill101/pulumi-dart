// ignore_for_file: unused_element, unnecessary_cast


/// The specification for modifying the URL of the request, prior to forwarding the request to the destination.
class HttpRouteURLRewriteNetworkservicesV1beta1 {
  /// Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.
  final String? hostRewrite;
  /// Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.
  final String? pathPrefixRewrite;

  /// Creates a new [HttpRouteURLRewriteNetworkservicesV1beta1].
  /// [hostRewrite] Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.
  /// [pathPrefixRewrite] Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.
  HttpRouteURLRewriteNetworkservicesV1beta1({
    this.hostRewrite,
    this.pathPrefixRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRewrite': ?hostRewrite,
      'pathPrefixRewrite': ?pathPrefixRewrite,
    };
  }

  factory HttpRouteURLRewriteNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return HttpRouteURLRewriteNetworkservicesV1beta1(
      hostRewrite: map['hostRewrite'] == null ? null : map['hostRewrite'] as String,
      pathPrefixRewrite: map['pathPrefixRewrite'] == null ? null : map['pathPrefixRewrite'] as String,
    );
  }
}

