// ignore_for_file: unused_element, unnecessary_cast


class CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders {
  /// List of item names, such as cookies, headers, or query strings.
  final List<String>? items;

  /// Creates a new [CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders].
  /// [items] List of item names, such as cookies, headers, or query strings.
  CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
    };
  }

  factory CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders.fromMap(Map<String, dynamic> map) {
    return CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders(
      items: map['items'] == null ? null : (map['items'] as List).cast<String>(),
    );
  }
}

