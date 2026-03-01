// ignore_for_file: unused_element, unnecessary_cast

class GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie {
  /// List of item names (`cookies`, `headers`, or `query_strings`).
  final List<String> items;

  /// Creates a new [GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie].
  /// [items] List of item names (`cookies`, `headers`, or `query_strings`).
  GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'items': items};
  }

  factory GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie(
      items: (map['items'] as List).cast<String>(),
    );
  }
}
