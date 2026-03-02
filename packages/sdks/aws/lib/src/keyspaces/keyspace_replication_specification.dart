// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeyspaceReplicationSpecification {
  /// Replication regions. If `replication_strategy` is `MULTI_REGION`, `region_list` requires the current Region and at least one additional AWS Region where the keyspace is going to be replicated in.
  final pulumi.Input<List<String>>? regionLists;
  /// Replication strategy. Valid values: `SINGLE_REGION` and `MULTI_REGION`.
  final pulumi.Input<String>? replicationStrategy;

  /// Creates a new [KeyspaceReplicationSpecification].
  /// [regionLists] Replication regions. If `replication_strategy` is `MULTI_REGION`, `region_list` requires the current Region and at least one additional AWS Region where the keyspace is going to be replicated in.
  /// [replicationStrategy] Replication strategy. Valid values: `SINGLE_REGION` and `MULTI_REGION`.
  KeyspaceReplicationSpecification({
    this.regionLists,
    this.replicationStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionLists': ?regionLists,
      'replicationStrategy': ?replicationStrategy,
    };
  }

  factory KeyspaceReplicationSpecification.fromMap(Map<String, dynamic> map) {
    return KeyspaceReplicationSpecification(
      regionLists: map['regionLists'] == null ? null : (((map['regionLists'] as List).cast<String>()).input()).input(),
      replicationStrategy: map['replicationStrategy'] == null ? null : ((map['replicationStrategy'] as String).input()).input(),
    );
  }
}

