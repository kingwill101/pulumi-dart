// ignore_for_file: unused_element, unnecessary_cast

class DistributionDefaultCacheBehaviorGrpcConfig {
  /// Whether the distribution is enabled to accept end user requests for content.
  final bool? enabled;

  DistributionDefaultCacheBehaviorGrpcConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory DistributionDefaultCacheBehaviorGrpcConfig.fromMap(
      Map<String, dynamic> map) {
    return DistributionDefaultCacheBehaviorGrpcConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
