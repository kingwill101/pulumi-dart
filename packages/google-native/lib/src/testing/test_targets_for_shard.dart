// ignore_for_file: unused_element, unnecessary_cast

/// Test targets for a shard.
class TestTargetsForShard {
  /// Group of packages, classes, and/or test methods to be run for each shard. The targets need to be specified in AndroidJUnitRunner argument format. For example, "package com.my.packages" "class com.my.package.MyClass". The number of test_targets must be greater than 0.
  final List<String>? testTargets;

  /// Creates a new [TestTargetsForShard].
  /// [testTargets] Group of packages, classes, and/or test methods to be run for each shard. The targets need to be specified in AndroidJUnitRunner argument format. For example, "package com.my.packages" "class com.my.package.MyClass". The number of test_targets must be greater than 0.
  TestTargetsForShard({
    this.testTargets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final testTargetsValue = testTargets;
    if (testTargetsValue != null) {
      map['testTargets'] = testTargetsValue;
    }
    return map;
  }

  factory TestTargetsForShard.fromMap(Map<String, dynamic> map) {
    return TestTargetsForShard(
      testTargets: map['testTargets'] == null
          ? null
          : (map['testTargets'] as List).cast<String>(),
    );
  }
}
