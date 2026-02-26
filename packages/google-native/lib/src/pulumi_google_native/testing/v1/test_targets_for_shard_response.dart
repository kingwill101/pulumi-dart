// ignore_for_file: unused_element, unnecessary_cast

/// Test targets for a shard.
class TestTargetsForShardResponse {
  /// Group of packages, classes, and/or test methods to be run for each shard. The targets need to be specified in AndroidJUnitRunner argument format. For example, "package com.my.packages" "class com.my.package.MyClass". The number of test_targets must be greater than 0.
  final List<String> testTargets;

  TestTargetsForShardResponse({
    required this.testTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['testTargets'] = testTargets;
    return map;
  }

  factory TestTargetsForShardResponse.fromMap(Map<String, dynamic> map) {
    return TestTargetsForShardResponse(
      testTargets: (map['testTargets'] as List).cast<String>(),
    );
  }
}
