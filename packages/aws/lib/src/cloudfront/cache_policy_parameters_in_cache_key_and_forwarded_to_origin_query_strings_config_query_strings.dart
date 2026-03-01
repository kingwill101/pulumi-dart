// ignore_for_file: unused_element, unnecessary_cast

class CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings {
  /// List of item names, such as cookies, headers, or query strings.
  final List<String>? items;

  /// Creates a new [CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings].
  /// [items] List of item names, such as cookies, headers, or query strings.
  CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'items': ?items};
  }

  factory CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings.fromMap(
    Map<String, dynamic> map,
  ) {
    return CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStrings(
      items: map['items'] == null
          ? null
          : (map['items'] as List).cast<String>(),
    );
  }
}
