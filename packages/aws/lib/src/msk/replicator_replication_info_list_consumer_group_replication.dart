// ignore_for_file: unused_element, unnecessary_cast


class ReplicatorReplicationInfoListConsumerGroupReplication {
  /// List of regular expression patterns indicating the consumer groups that should not be replicated.
  final List<String>? consumerGroupsToExcludes;
  /// List of regular expression patterns indicating the consumer groups to copy.
  final List<String> consumerGroupsToReplicates;
  /// Whether to periodically check for new consumer groups.
  final bool? detectAndCopyNewConsumerGroups;
  /// Whether to periodically write the translated offsets to __consumer_offsets topic in target cluster.
  final bool? synchroniseConsumerGroupOffsets;

  /// Creates a new [ReplicatorReplicationInfoListConsumerGroupReplication].
  /// [consumerGroupsToExcludes] List of regular expression patterns indicating the consumer groups that should not be replicated.
  /// [consumerGroupsToReplicates] List of regular expression patterns indicating the consumer groups to copy.
  /// [detectAndCopyNewConsumerGroups] Whether to periodically check for new consumer groups.
  /// [synchroniseConsumerGroupOffsets] Whether to periodically write the translated offsets to __consumer_offsets topic in target cluster.
  ReplicatorReplicationInfoListConsumerGroupReplication({
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
      consumerGroupsToExcludes: map['consumerGroupsToExcludes'] == null ? null : (map['consumerGroupsToExcludes'] as List).cast<String>(),
      consumerGroupsToReplicates: (map['consumerGroupsToReplicates'] as List).cast<String>(),
      detectAndCopyNewConsumerGroups: map['detectAndCopyNewConsumerGroups'] == null ? null : map['detectAndCopyNewConsumerGroups'] as bool,
      synchroniseConsumerGroupOffsets: map['synchroniseConsumerGroupOffsets'] == null ? null : map['synchroniseConsumerGroupOffsets'] as bool,
    );
  }
}

