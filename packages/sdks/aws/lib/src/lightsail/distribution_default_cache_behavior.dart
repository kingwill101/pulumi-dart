// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionDefaultCacheBehavior {
  /// Cache behavior of the distribution. Valid values: `cache`, `dont-cache`.
  final pulumi.Input<String> behavior;

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
      behavior: (map['behavior'] as String).input(),
    );
  }
}

