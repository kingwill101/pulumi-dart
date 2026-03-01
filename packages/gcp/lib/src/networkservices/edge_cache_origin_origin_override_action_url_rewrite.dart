// ignore_for_file: unused_element, unnecessary_cast

class EdgeCacheOriginOriginOverrideActionUrlRewrite {
  /// Prior to forwarding the request to the selected
  /// origin, the request's host header is replaced with
  /// contents of the hostRewrite.
  /// This value must be between 1 and 255 characters.
  final String? hostRewrite;

  /// Creates a new [EdgeCacheOriginOriginOverrideActionUrlRewrite].
  /// [hostRewrite] Prior to forwarding the request to the selected
  EdgeCacheOriginOriginOverrideActionUrlRewrite({this.hostRewrite});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'hostRewrite': ?hostRewrite};
  }

  factory EdgeCacheOriginOriginOverrideActionUrlRewrite.fromMap(
    Map<String, dynamic> map,
  ) {
    return EdgeCacheOriginOriginOverrideActionUrlRewrite(
      hostRewrite: map['hostRewrite'] == null
          ? null
          : map['hostRewrite'] as String,
    );
  }
}
