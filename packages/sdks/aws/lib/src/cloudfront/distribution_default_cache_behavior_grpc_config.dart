// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionDefaultCacheBehaviorGrpcConfig {
  /// Whether the distribution is enabled to accept end user requests for content.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DistributionDefaultCacheBehaviorGrpcConfig].
  /// [enabled] Whether the distribution is enabled to accept end user requests for content.
  DistributionDefaultCacheBehaviorGrpcConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory DistributionDefaultCacheBehaviorGrpcConfig.fromMap(Map<String, dynamic> map) {
    return DistributionDefaultCacheBehaviorGrpcConfig(
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
    );
  }
}

