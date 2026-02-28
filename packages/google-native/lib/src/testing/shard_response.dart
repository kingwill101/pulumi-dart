// ignore_for_file: unused_element, unnecessary_cast

import 'test_targets_for_shard_response.dart';

/// Output only. Details about the shard.
class ShardResponse {
  /// The estimated shard duration based on previous test case timing records, if available.
  final String estimatedShardDuration;

  /// The total number of shards.
  final int numShards;

  /// The index of the shard among all the shards.
  final int shardIndex;

  /// Test targets for each shard. Only set for manual sharding.
  final TestTargetsForShardResponse testTargetsForShard;

  /// Creates a new [ShardResponse].
  /// [estimatedShardDuration] The estimated shard duration based on previous test case timing records, if available.
  /// [numShards] The total number of shards.
  /// [shardIndex] The index of the shard among all the shards.
  /// [testTargetsForShard] Test targets for each shard. Only set for manual sharding.
  ShardResponse({
    required this.estimatedShardDuration,
    required this.numShards,
    required this.shardIndex,
    required this.testTargetsForShard,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['estimatedShardDuration'] = estimatedShardDuration;
    map['numShards'] = numShards;
    map['shardIndex'] = shardIndex;
    map['testTargetsForShard'] = testTargetsForShard.toMap();
    return map;
  }

  factory ShardResponse.fromMap(Map<String, dynamic> map) {
    return ShardResponse(
      estimatedShardDuration: map['estimatedShardDuration'] as String,
      numShards: map['numShards'] as int,
      shardIndex: map['shardIndex'] as int,
      testTargetsForShard: TestTargetsForShardResponse.fromMap(
          (map['testTargetsForShard'] as Map).cast<String, dynamic>()),
    );
  }
}
