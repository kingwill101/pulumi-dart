// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionDefaultCacheBehavior {
  /// Cache behavior of the distribution. Valid values: `cache`, `dont-cache`.
  final pulumi.Input<String> behavior;

  /// Creates a new [DistributionDefaultCacheBehavior].
  /// [behavior] Cache behavior of the distribution. Valid values: `cache`, `dont-cache`.
  const DistributionDefaultCacheBehavior({
    required this.behavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
    };
  }

  factory DistributionDefaultCacheBehavior.fromMap(Map<String, dynamic> map) {
    return DistributionDefaultCacheBehavior(
      behavior: pulumi.Input.fromValue(map['behavior'] as String),
    );
  }
}

