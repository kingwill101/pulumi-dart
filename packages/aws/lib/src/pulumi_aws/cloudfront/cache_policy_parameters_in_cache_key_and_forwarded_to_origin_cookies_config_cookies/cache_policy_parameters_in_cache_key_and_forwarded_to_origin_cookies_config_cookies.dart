// ignore_for_file: unused_element, unnecessary_cast

class CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies {
  /// List of item names, such as cookies, headers, or query strings.
  final List<String>? items;

  CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies({
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = itemsValue;
    }
    return map;
  }

  factory CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies.fromMap(
      Map<String, dynamic> map) {
    return CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies(
      items:
          map['items'] == null ? null : (map['items'] as List).cast<String>(),
    );
  }
}
