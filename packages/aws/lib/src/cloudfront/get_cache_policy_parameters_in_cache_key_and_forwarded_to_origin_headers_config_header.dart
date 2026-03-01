// ignore_for_file: unused_element, unnecessary_cast


class GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader {
  /// List of item names (`cookies`, `headers`, or `query_strings`).
  final List<String> items;

  /// Creates a new [GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader].
  /// [items] List of item names (`cookies`, `headers`, or `query_strings`).
  GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items,
    };
  }

  factory GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader.fromMap(Map<String, dynamic> map) {
    return GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader(
      items: (map['items'] as List).cast<String>(),
    );
  }
}

