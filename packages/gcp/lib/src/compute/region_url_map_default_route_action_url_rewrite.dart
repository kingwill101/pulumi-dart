// ignore_for_file: unused_element, unnecessary_cast

class RegionUrlMapDefaultRouteActionUrlRewrite {
  /// Before forwarding the request to the selected service, the request's host header is replaced with contents of hostRewrite.
  /// The value must be from 1 to 255 characters.
  final String? hostRewrite;

  /// Before forwarding the request to the selected backend service, the matching portion of the request's path is replaced by pathPrefixRewrite.
  /// The value must be from 1 to 1024 characters.
  final String? pathPrefixRewrite;

  /// Creates a new [RegionUrlMapDefaultRouteActionUrlRewrite].
  /// [hostRewrite] Before forwarding the request to the selected service, the request's host header is replaced with contents of hostRewrite.
  /// [pathPrefixRewrite] Before forwarding the request to the selected backend service, the matching portion of the request's path is replaced by pathPrefixRewrite.
  RegionUrlMapDefaultRouteActionUrlRewrite({
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

  factory RegionUrlMapDefaultRouteActionUrlRewrite.fromMap(
      Map<String, dynamic> map) {
    return RegionUrlMapDefaultRouteActionUrlRewrite(
      hostRewrite:
          map['hostRewrite'] == null ? null : map['hostRewrite'] as String,
      pathPrefixRewrite: map['pathPrefixRewrite'] == null
          ? null
          : map['pathPrefixRewrite'] as String,
    );
  }
}
