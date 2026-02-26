// ignore_for_file: unused_element, unnecessary_cast

class KeyspaceReplicationSpecification {
  /// Replication regions. If <span pulumi-lang-nodejs="`replicationStrategy`" pulumi-lang-dotnet="`ReplicationStrategy`" pulumi-lang-go="`replicationStrategy`" pulumi-lang-python="`replication_strategy`" pulumi-lang-yaml="`replicationStrategy`" pulumi-lang-java="`replicationStrategy`">`replication_strategy`</span> is `MULTI_REGION`, <span pulumi-lang-nodejs="`regionList`" pulumi-lang-dotnet="`RegionList`" pulumi-lang-go="`regionList`" pulumi-lang-python="`region_list`" pulumi-lang-yaml="`regionList`" pulumi-lang-java="`regionList`">`region_list`</span> requires the current Region and at least one additional AWS Region where the keyspace is going to be replicated in.
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
