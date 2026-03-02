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
      cacheContent: (map['cacheContent'] as String).input(),
      cacheId: map['cacheId'] == null ? null : (map['cacheId']! as String).input(),
      cacheType: (map['cacheType'] as String).input(),
      ttl: (map['ttl'] as int).input(),
      weight: map['weight'] == null ? null : (map['weight']! as int).input(),
    );
  }
}

