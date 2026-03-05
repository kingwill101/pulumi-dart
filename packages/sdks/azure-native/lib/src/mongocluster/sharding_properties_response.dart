// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The sharding properties of the cluster. This includes the shard count and scaling options for the cluster.
class ShardingPropertiesResponse {
  /// Number of shards to provision on the cluster.
  final pulumi.Input<int>? shardCount;

  /// Creates a new [ShardingPropertiesResponse].
  /// [shardCount] Number of shards to provision on the cluster.
  ShardingPropertiesResponse({
    this.shardCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shardCount': ?shardCount,
    };
  }

  factory ShardingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ShardingPropertiesResponse(
      shardCount: (() { final guardedValue = map['shardCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

