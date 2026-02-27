// ignore_for_file: unused_element, unnecessary_cast

class KeyspaceReplicationSpecification {
  /// Replication regions. If `replication_strategy` is `MULTI_REGION`, `region_list` requires the current Region and at least one additional AWS Region where the keyspace is going to be replicated in.
  final List<String>? regionLists;

  /// Replication strategy. Valid values: `SINGLE_REGION` and `MULTI_REGION`.
  final String? replicationStrategy;

  KeyspaceReplicationSpecification({
    this.regionLists,
    this.replicationStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionListsValue = regionLists;
    if (regionListsValue != null) {
      map['regionLists'] = regionListsValue;
    }
    final replicationStrategyValue = replicationStrategy;
    if (replicationStrategyValue != null) {
      map['replicationStrategy'] = replicationStrategyValue;
    }
    return map;
  }

  factory KeyspaceReplicationSpecification.fromMap(Map<String, dynamic> map) {
    return KeyspaceReplicationSpecification(
      regionLists: map['regionLists'] == null
          ? null
          : (map['regionLists'] as List).cast<String>(),
      replicationStrategy: map['replicationStrategy'] == null
          ? null
          : map['replicationStrategy'] as String,
    );
  }
}
