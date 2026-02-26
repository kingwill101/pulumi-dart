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

  ShardingOptionResponse({
    required this.manualSharding,
    required this.smartSharding,
    required this.uniformSharding,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['manualSharding'] = manualSharding.toMap();
    map['smartSharding'] = smartSharding.toMap();
    map['uniformSharding'] = uniformSharding.toMap();
    return map;
  }

  factory ShardingOptionResponse.fromMap(Map<String, dynamic> map) {
    return ShardingOptionResponse(
      manualSharding: ManualShardingResponse.fromMap(
          (map['manualSharding'] as Map).cast<String, dynamic>()),
      smartSharding: SmartShardingResponse.fromMap(
          (map['smartSharding'] as Map).cast<String, dynamic>()),
      uniformSharding: UniformShardingResponse.fromMap(
          (map['uniformSharding'] as Map).cast<String, dynamic>()),
    );
  }
}
