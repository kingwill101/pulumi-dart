// ignore_for_file: unused_element, unnecessary_cast

class ResolverCachingConfig {
  /// The caching keys for a resolver that has caching activated. Valid values are entries from the $context.arguments, $context.source, and $context.identity maps.
  final List<String>? cachingKeys;

  /// The TTL in seconds for a resolver that has caching activated. Valid values are between <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and <span pulumi-lang-nodejs="`3600`" pulumi-lang-dotnet="`3600`" pulumi-lang-go="`3600`" pulumi-lang-python="`3600`" pulumi-lang-yaml="`3600`" pulumi-lang-java="`3600`">`3600`</span> seconds.
  final int? ttl;

  ResolverCachingConfig({
    this.cachingKeys,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cachingKeysValue = cachingKeys;
    if (cachingKeysValue != null) {
      map['cachingKeys'] = cachingKeysValue;
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    return map;
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
