// ignore_for_file: unused_element, unnecessary_cast

/// The specification for modifying the URL of the request, prior to forwarding the request to the destination.
class HttpRouteURLRewriteResponse2 {
  /// Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.
  final String hostRewrite;

  /// Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.
  final String pathPrefixRewrite;

  HttpRouteURLRewriteResponse2({
    required this.hostRewrite,
    required this.pathPrefixRewrite,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostRewrite'] = hostRewrite;
    map['pathPrefixRewrite'] = pathPrefixRewrite;
    return map;
  }

  factory HttpRouteURLRewriteResponse2.fromMap(Map<String, dynamic> map) {
    return HttpRouteURLRewriteResponse2(
      hostRewrite: map['hostRewrite'] as String,
      pathPrefixRewrite: map['pathPrefixRewrite'] as String,
    );
  }
}
