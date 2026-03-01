// ignore_for_file: unused_element, unnecessary_cast


class DistributionOrderedCacheBehaviorGrpcConfig {
  /// Whether the distribution is enabled to accept end user requests for content.
  final bool? enabled;

  /// Creates a new [DistributionOrderedCacheBehaviorGrpcConfig].
  /// [enabled] Whether the distribution is enabled to accept end user requests for content.
  DistributionOrderedCacheBehaviorGrpcConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory DistributionOrderedCacheBehaviorGrpcConfig.fromMap(Map<String, dynamic> map) {
    return DistributionOrderedCacheBehaviorGrpcConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

