// ignore_for_file: unused_element, unnecessary_cast

class ResolverCachingConfig {
  /// The caching keys for a resolver that has caching activated. Valid values are entries from the $context.arguments, $context.source, and $context.identity maps.
  final List<String>? cachingKeys;

  /// The TTL in seconds for a resolver that has caching activated. Valid values are between `1` and `3600` seconds.
  final int? ttl;

  /// Creates a new [ResolverCachingConfig].
  /// [cachingKeys] The caching keys for a resolver that has caching activated. Valid values are entries from the $context.arguments, $context.source, and $context.identity maps.
  /// [ttl] The TTL in seconds for a resolver that has caching activated. Valid values are between `1` and `3600` seconds.
  ResolverCachingConfig({this.cachingKeys, this.ttl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cachingKeys': ?cachingKeys, 'ttl': ?ttl};
  }

  factory ResolverCachingConfig.fromMap(Map<String, dynamic> map) {
    return ResolverCachingConfig(
      cachingKeys: map['cachingKeys'] == null
          ? null
          : (map['cachingKeys'] as List).cast<String>(),
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
    );
  }
}
