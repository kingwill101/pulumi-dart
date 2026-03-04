// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResolverCachingConfig {
  /// The caching keys for a resolver that has caching activated. Valid values are entries from the $context.arguments, $context.source, and $context.identity maps.
  final pulumi.Input<List<String>>? cachingKeys;

  /// The TTL in seconds for a resolver that has caching activated. Valid values are between `1` and `3600` seconds.
  final pulumi.Input<int>? ttl;

  /// Creates a new [ResolverCachingConfig].
  /// [cachingKeys] The caching keys for a resolver that has caching activated. Valid values are entries from the $context.arguments, $context.source, and $context.identity maps.
  /// [ttl] The TTL in seconds for a resolver that has caching activated. Valid values are between `1` and `3600` seconds.
  ResolverCachingConfig({this.cachingKeys, this.ttl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cachingKeys': ?cachingKeys, 'ttl': ?ttl};
  }

  factory ResolverCachingConfig.fromMap(Map<String, dynamic> map) {
    return ResolverCachingConfig(
      cachingKeys: (() {
        final guardedValue = map['cachingKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ttl: (() {
        final guardedValue = map['ttl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
