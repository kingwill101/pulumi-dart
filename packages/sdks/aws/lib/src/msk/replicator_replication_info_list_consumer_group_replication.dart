// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatorReplicationInfoListConsumerGroupReplication {
  /// Consumer group offset synchronization mode. Valid values are `LEGACY` and `ENHANCED`. With `LEGACY`, offsets are synchronized when producers write to the source cluster. With `ENHANCED`, consumer offsets are synchronized regardless of producer location. `ENHANCED` requires a corresponding replicator that replicates data from the target cluster to the source cluster and requires `topic_name_configuration.type` to be set to `IDENTICAL`. Defaults to `LEGACY`. Changing this value will force a new resource.
  final pulumi.Input<String?>? consumerGroupOffsetSyncMode;
  /// List of regular expression patterns indicating the consumer groups that should not be replicated.
  final pulumi.Input<List<String>?>? consumerGroupsToExcludes;
  /// List of regular expression patterns indicating the consumer groups to copy.
  final pulumi.Input<List<String>> consumerGroupsToReplicates;
  /// Whether to periodically check for new consumer groups.
  final pulumi.Input<bool?>? detectAndCopyNewConsumerGroups;
  /// Whether to periodically write the translated offsets to __consumer_offsets topic in target cluster.
  final pulumi.Input<bool?>? synchroniseConsumerGroupOffsets;

  /// Creates a new [ReplicatorReplicationInfoListConsumerGroupReplication].
  /// [consumerGroupOffsetSyncMode] Consumer group offset synchronization mode. Valid values are `LEGACY` and `ENHANCED`. With `LEGACY`, offsets are synchronized when producers write to the source cluster. With `ENHANCED`, consumer offsets are synchronized regardless of producer location. `ENHANCED` requires a corresponding replicator that replicates data from the target cluster to the source cluster and requires `topic_name_configuration.type` to be set to `IDENTICAL`. Defaults to `LEGACY`. Changing this value will force a new resource.
  /// [consumerGroupsToExcludes] List of regular expression patterns indicating the consumer groups that should not be replicated.
  /// [consumerGroupsToReplicates] List of regular expression patterns indicating the consumer groups to copy.
  /// [detectAndCopyNewConsumerGroups] Whether to periodically check for new consumer groups.
  /// [synchroniseConsumerGroupOffsets] Whether to periodically write the translated offsets to __consumer_offsets topic in target cluster.
  const ReplicatorReplicationInfoListConsumerGroupReplication({
    this.consumerGroupOffsetSyncMode,
    this.consumerGroupsToExcludes,
    required this.consumerGroupsToReplicates,
    this.detectAndCopyNewConsumerGroups,
    this.synchroniseConsumerGroupOffsets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroupOffsetSyncMode': ?consumerGroupOffsetSyncMode,
      'consumerGroupsToExcludes': ?consumerGroupsToExcludes,
      'consumerGroupsToReplicates': consumerGroupsToReplicates,
      'detectAndCopyNewConsumerGroups': ?detectAndCopyNewConsumerGroups,
      'synchroniseConsumerGroupOffsets': ?synchroniseConsumerGroupOffsets,
    };
  }

  factory ReplicatorReplicationInfoListConsumerGroupReplication.fromMap(Map<String, dynamic> map) {
    return ReplicatorReplicationInfoListConsumerGroupReplication(
      consumerGroupOffsetSyncMode: (() { final guardedValue = map['consumerGroupOffsetSyncMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerGroupsToExcludes: (() { final guardedValue = map['consumerGroupsToExcludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      consumerGroupsToReplicates: pulumi.Input.fromValue((map['consumerGroupsToReplicates'] as List).cast<String>()),
      detectAndCopyNewConsumerGroups: (() { final guardedValue = map['detectAndCopyNewConsumerGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      synchroniseConsumerGroupOffsets: (() { final guardedValue = map['synchroniseConsumerGroupOffsets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
