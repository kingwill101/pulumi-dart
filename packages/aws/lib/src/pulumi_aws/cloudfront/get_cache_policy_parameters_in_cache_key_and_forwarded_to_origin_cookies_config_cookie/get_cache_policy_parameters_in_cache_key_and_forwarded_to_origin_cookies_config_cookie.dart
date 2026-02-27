// ignore_for_file: unused_element, unnecessary_cast

class GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie {
  /// List of item names (`cookies`, `headers`, or `query_strings`).
  final List<String> items;

  GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = items;
    return map;
  }

  factory GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie.fromMap(
      Map<String, dynamic> map) {
    return GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie(
      items: (map['items'] as List).cast<String>(),
    );
  }
}
