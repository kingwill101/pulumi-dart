// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResolverCachingConfig {
  /// Caching keys for a resolver that has caching activated. Valid values are entries from the $context.arguments, $context.source, and $context.identity maps.
  final pulumi.Input<List<String>?>? cachingKeys;
  /// TTL in seconds for a resolver that has caching activated. Valid values are between `1` and `3600` seconds.
  final pulumi.Input<int?>? ttl;

  /// Creates a new [ResolverCachingConfig].
  /// [cachingKeys] Caching keys for a resolver that has caching activated. Valid values are entries from the $context.arguments, $context.source, and $context.identity maps.
  /// [ttl] TTL in seconds for a resolver that has caching activated. Valid values are between `1` and `3600` seconds.
  const ResolverCachingConfig({
    this.cachingKeys,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachingKeys': ?cachingKeys,
      'ttl': ?ttl,
    };
  }

  factory ResolverCachingConfig.fromMap(Map<String, dynamic> map) {
    return ResolverCachingConfig(
      cachingKeys: (() { final guardedValue = map['cachingKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
