// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCacheConfig {
  final pulumi.Input<String> cacheContent;
  final pulumi.Input<String>? cacheId;
  final pulumi.Input<String> cacheType;
  final pulumi.Input<int> ttl;
  final pulumi.Input<int>? weight;

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
      cacheContent: pulumi.Input.fromValue(map['cacheContent'] as String),
      cacheId: (() {
        final guardedValue = map['cacheId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cacheType: pulumi.Input.fromValue(map['cacheType'] as String),
      ttl: pulumi.Input.fromValue(map['ttl'] as int),
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
