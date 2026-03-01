// ignore_for_file: unused_element, unnecessary_cast

import 'manual_sharding_response.dart';
import 'smart_sharding_response.dart';
import 'uniform_sharding_response.dart';

/// Options for enabling sharding.
class ShardingOptionResponse {
  /// Shards test cases into the specified groups of packages, classes, and/or methods.
  final ManualShardingResponse manualSharding;

  /// Shards test based on previous test case timing records.
  final SmartShardingResponse smartSharding;

  /// Uniformly shards test cases given a total number of shards.
  final UniformShardingResponse uniformSharding;

  /// Creates a new [ShardingOptionResponse].
  /// [manualSharding] Shards test cases into the specified groups of packages, classes, and/or methods.
  /// [smartSharding] Shards test based on previous test case timing records.
  /// [uniformSharding] Uniformly shards test cases given a total number of shards.
  ShardingOptionResponse({
    required this.manualSharding,
    required this.smartSharding,
    required this.uniformSharding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manualSharding': manualSharding.toMap(),
      'smartSharding': smartSharding.toMap(),
      'uniformSharding': uniformSharding.toMap(),
    };
  }

  factory ShardingOptionResponse.fromMap(Map<String, dynamic> map) {
    return ShardingOptionResponse(
      manualSharding: ManualShardingResponse.fromMap(
        (map['manualSharding'] as Map).cast<String, dynamic>(),
      ),
      smartSharding: SmartShardingResponse.fromMap(
        (map['smartSharding'] as Map).cast<String, dynamic>(),
      ),
      uniformSharding: UniformShardingResponse.fromMap(
        (map['uniformSharding'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
