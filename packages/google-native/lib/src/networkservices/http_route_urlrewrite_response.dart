// ignore_for_file: unused_element, unnecessary_cast

/// The specification for modifying the URL of the request, prior to forwarding the request to the destination.
class HttpRouteURLRewriteResponse {
  /// Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.
  final String hostRewrite;

  /// Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.
  final String pathPrefixRewrite;

  /// Creates a new [HttpRouteURLRewriteResponse].
  /// [hostRewrite] Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.
  /// [pathPrefixRewrite] Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.
  HttpRouteURLRewriteResponse({
    required this.hostRewrite,
    required this.pathPrefixRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRewrite': hostRewrite,
      'pathPrefixRewrite': pathPrefixRewrite,
    };
  }

  factory HttpRouteURLRewriteResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteURLRewriteResponse(
      hostRewrite: map['hostRewrite'] as String,
      pathPrefixRewrite: map['pathPrefixRewrite'] as String,
    );
  }
}
