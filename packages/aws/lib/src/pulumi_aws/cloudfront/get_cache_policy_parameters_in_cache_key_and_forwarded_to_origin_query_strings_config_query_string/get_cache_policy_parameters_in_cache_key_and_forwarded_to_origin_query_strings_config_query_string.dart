// ignore_for_file: unused_element, unnecessary_cast

class GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString {
  /// List of item names (`cookies`, `headers`, or `query_strings`).
  final List<String> items;

  GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = items;
    return map;
  }

  factory GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString.fromMap(
      Map<String, dynamic> map) {
    return GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString(
      items: (map['items'] as List).cast<String>(),
    );
  }
}
