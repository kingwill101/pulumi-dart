// ignore_for_file: unused_element, unnecessary_cast


class DistributionDefaultCacheBehavior {
  /// Cache behavior of the distribution. Valid values: `cache`, `dont-cache`.
  final String behavior;

  /// Creates a new [DistributionDefaultCacheBehavior].
  /// [behavior] Cache behavior of the distribution. Valid values: `cache`, `dont-cache`.
  DistributionDefaultCacheBehavior({
    required this.behavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
    };
  }

  factory DistributionDefaultCacheBehavior.fromMap(Map<String, dynamic> map) {
    return DistributionDefaultCacheBehavior(
      behavior: map['behavior'] as String,
    );
  }
}

