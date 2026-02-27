// ignore_for_file: unused_element, unnecessary_cast

class DistributionDefaultCacheBehavior2 {
  /// Cache behavior of the distribution. Valid values: `cache`, `dont-cache`.
  final String behavior;

  DistributionDefaultCacheBehavior2({
    required this.behavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['behavior'] = behavior;
    return map;
  }

  factory DistributionDefaultCacheBehavior2.fromMap(Map<String, dynamic> map) {
    return DistributionDefaultCacheBehavior2(
      behavior: map['behavior'] as String,
    );
  }
}
