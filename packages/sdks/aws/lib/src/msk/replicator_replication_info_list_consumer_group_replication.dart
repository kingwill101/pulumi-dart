// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatorReplicationInfoListConsumerGroupReplication {
  /// List of regular expression patterns indicating the consumer groups that should not be replicated.
  final pulumi.Input<List<String>>? consumerGroupsToExcludes;
  /// List of regular expression patterns indicating the consumer groups to copy.
  final pulumi.Input<List<String>> consumerGroupsToReplicates;
  /// Whether to periodically check for new consumer groups.
  final pulumi.Input<bool>? detectAndCopyNewConsumerGroups;
  /// Whether to periodically write the translated offsets to __consumer_offsets topic in target cluster.
  final pulumi.Input<bool>? synchroniseConsumerGroupOffsets;

  /// Creates a new [ReplicatorReplicationInfoListConsumerGroupReplication].
  /// [consumerGroupsToExcludes] List of regular expression patterns indicating the consumer groups that should not be replicated.
  /// [consumerGroupsToReplicates] List of regular expression patterns indicating the consumer groups to copy.
  /// [detectAndCopyNewConsumerGroups] Whether to periodically check for new consumer groups.
  /// [synchroniseConsumerGroupOffsets] Whether to periodically write the translated offsets to __consumer_offsets topic in target cluster.
  const ReplicatorReplicationInfoListConsumerGroupReplication({
    this.consumerGroupsToExcludes,
    required this.consumerGroupsToReplicates,
    this.detectAndCopyNewConsumerGroups,
    this.synchroniseConsumerGroupOffsets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroupsToExcludes': ?consumerGroupsToExcludes,
      'consumerGroupsToReplicates': consumerGroupsToReplicates,
      'detectAndCopyNewConsumerGroups': ?detectAndCopyNewConsumerGroups,
      'synchroniseConsumerGroupOffsets': ?synchroniseConsumerGroupOffsets,
    };
  }

  factory ReplicatorReplicationInfoListConsumerGroupReplication.fromMap(Map<String, dynamic> map) {
    return ReplicatorReplicationInfoListConsumerGroupReplication(
      consumerGroupsToExcludes: (() { final guardedValue = map['consumerGroupsToExcludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      consumerGroupsToReplicates: pulumi.Input.fromValue((map['consumerGroupsToReplicates'] as List).cast<String>()),
      detectAndCopyNewConsumerGroups: (() { final guardedValue = map['detectAndCopyNewConsumerGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      synchroniseConsumerGroupOffsets: (() { final guardedValue = map['synchroniseConsumerGroupOffsets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

