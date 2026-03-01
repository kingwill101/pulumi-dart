// ignore_for_file: unused_element, unnecessary_cast

import 'manual_sharding.dart';
import 'smart_sharding.dart';
import 'uniform_sharding.dart';

/// Options for enabling sharding.
class ShardingOption {
  /// Shards test cases into the specified groups of packages, classes, and/or methods.
  final ManualSharding? manualSharding;

  /// Shards test based on previous test case timing records.
  final SmartSharding? smartSharding;

  /// Uniformly shards test cases given a total number of shards.
  final UniformSharding? uniformSharding;

  /// Creates a new [ShardingOption].
  /// [manualSharding] Shards test cases into the specified groups of packages, classes, and/or methods.
  /// [smartSharding] Shards test based on previous test case timing records.
  /// [uniformSharding] Uniformly shards test cases given a total number of shards.
  ShardingOption({
    this.manualSharding,
    this.smartSharding,
    this.uniformSharding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manualSharding': ?manualSharding == null
          ? null
          : manualSharding!.toMap(),
      'smartSharding': ?smartSharding == null ? null : smartSharding!.toMap(),
      'uniformSharding': ?uniformSharding == null
          ? null
          : uniformSharding!.toMap(),
    };
  }

  factory ShardingOption.fromMap(Map<String, dynamic> map) {
    return ShardingOption(
      manualSharding: map['manualSharding'] == null
          ? null
          : ManualSharding.fromMap(
              (map['manualSharding'] as Map).cast<String, dynamic>(),
            ),
      smartSharding: map['smartSharding'] == null
          ? null
          : SmartSharding.fromMap(
              (map['smartSharding'] as Map).cast<String, dynamic>(),
            ),
      uniformSharding: map['uniformSharding'] == null
          ? null
          : UniformSharding.fromMap(
              (map['uniformSharding'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
