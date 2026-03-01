// ignore_for_file: unused_element, unnecessary_cast


class DomainCacheConfig {
  final String cacheContent;
  final String? cacheId;
  final String cacheType;
  final int ttl;
  final int? weight;

  /// Creates a new [DomainCacheConfig].
  /// [cacheContent] Required.
  /// [cacheId] Optional.
  /// [cacheType] Required.
  /// [ttl] Required.
  /// [weight] Optional.
  DomainCacheConfig({
    required this.cacheContent,
    this.cacheId,
    required this.cacheType,
    required this.ttl,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheContent': cacheContent,
      'cacheId': ?cacheId,
      'cacheType': cacheType,
      'ttl': ttl,
      'weight': ?weight,
    };
  }

  factory DomainCacheConfig.fromMap(Map<String, dynamic> map) {
    return DomainCacheConfig(
      cacheContent: map['cacheContent'] as String,
      cacheId: map['cacheId'] == null ? null : map['cacheId'] as String,
      cacheType: map['cacheType'] as String,
      ttl: map['ttl'] as int,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

