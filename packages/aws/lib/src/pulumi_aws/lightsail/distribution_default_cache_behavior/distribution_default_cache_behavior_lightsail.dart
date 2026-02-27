// ignore_for_file: unused_element, unnecessary_cast

class DistributionDefaultCacheBehaviorLightsail {
  /// Cache behavior of the distribution. Valid values: `cache`, `dont-cache`.
  final String behavior;

  DistributionDefaultCacheBehaviorLightsail({
    required this.behavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['behavior'] = behavior;
    return map;
  }

  factory DistributionDefaultCacheBehaviorLightsail.fromMap(
      Map<String, dynamic> map) {
    return DistributionDefaultCacheBehaviorLightsail(
      behavior: map['behavior'] as String,
    );
  }
}
