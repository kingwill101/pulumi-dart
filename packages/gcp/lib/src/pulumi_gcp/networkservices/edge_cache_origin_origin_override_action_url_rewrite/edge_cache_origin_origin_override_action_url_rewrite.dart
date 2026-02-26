// ignore_for_file: unused_element, unnecessary_cast

class EdgeCacheOriginOriginOverrideActionUrlRewrite {
  /// Prior to forwarding the request to the selected
  /// origin, the request's host header is replaced with
  /// contents of the hostRewrite.
  /// This value must be between 1 and 255 characters.
  final String? hostRewrite;

  EdgeCacheOriginOriginOverrideActionUrlRewrite({
    this.hostRewrite,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostRewriteValue = hostRewrite;
    if (hostRewriteValue != null) {
      map['hostRewrite'] = hostRewriteValue;
    }
    return map;
  }

  factory EdgeCacheOriginOriginOverrideActionUrlRewrite.fromMap(
      Map<String, dynamic> map) {
    return EdgeCacheOriginOriginOverrideActionUrlRewrite(
      hostRewrite:
          map['hostRewrite'] == null ? null : map['hostRewrite'] as String,
    );
  }
}
