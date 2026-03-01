// ignore_for_file: unused_element, unnecessary_cast


/// The sharding properties of the cluster. This includes the shard count and scaling options for the cluster.
class ShardingProperties {
  /// Number of shards to provision on the cluster.
  final int? shardCount;

  /// Creates a new [ShardingProperties].
  /// [shardCount] Number of shards to provision on the cluster.
  ShardingProperties({
    this.shardCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shardCount': ?shardCount,
    };
  }

  factory ShardingProperties.fromMap(Map<String, dynamic> map) {
    return ShardingProperties(
      shardCount: map['shardCount'] == null ? null : map['shardCount'] as int,
    );
  }
}

