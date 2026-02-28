// ignore_for_file: unused_element, unnecessary_cast

import 'replicator_replication_info_list_topic_replication_starting_position.dart';
import 'replicator_replication_info_list_topic_replication_topic_name_configuration.dart';

class ReplicatorReplicationInfoListTopicReplication {
  /// Whether to periodically configure remote topic ACLs to match their corresponding upstream topics.
  final bool? copyAccessControlListsForTopics;
  /// Whether to periodically configure remote topics to match their corresponding upstream topics.
  final bool? copyTopicConfigurations;
  /// Whether to periodically check for new topics and partitions.
  final bool? detectAndCopyNewTopics;
  /// Configuration for specifying the position in the topics to start replicating from.
  final ReplicatorReplicationInfoListTopicReplicationStartingPosition? startingPosition;
  /// Configuration for specifying replicated topic names should be the same as their corresponding upstream topics or prefixed with source cluster alias.
  final ReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration? topicNameConfiguration;
  /// List of regular expression patterns indicating the topics that should not be replica.
  final List<String>? topicsToExcludes;
  /// List of regular expression patterns indicating the topics to copy.
  final List<String> topicsToReplicates;

  /// Creates a new [ReplicatorReplicationInfoListTopicReplication].
  /// [copyAccessControlListsForTopics] Whether to periodically configure remote topic ACLs to match their corresponding upstream topics.
  /// [copyTopicConfigurations] Whether to periodically configure remote topics to match their corresponding upstream topics.
  /// [detectAndCopyNewTopics] Whether to periodically check for new topics and partitions.
  /// [startingPosition] Configuration for specifying the position in the topics to start replicating from.
  /// [topicNameConfiguration] Configuration for specifying replicated topic names should be the same as their corresponding upstream topics or prefixed with source cluster alias.
  /// [topicsToExcludes] List of regular expression patterns indicating the topics that should not be replica.
  /// [topicsToReplicates] List of regular expression patterns indicating the topics to copy.
  ReplicatorReplicationInfoListTopicReplication({
    this.copyAccessControlListsForTopics,
    this.copyTopicConfigurations,
    this.detectAndCopyNewTopics,
    this.startingPosition,
    this.topicNameConfiguration,
    this.topicsToExcludes,
    required this.topicsToReplicates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyAccessControlListsForTopics': ?copyAccessControlListsForTopics,
      'copyTopicConfigurations': ?copyTopicConfigurations,
      'detectAndCopyNewTopics': ?detectAndCopyNewTopics,
      'startingPosition': ?startingPosition == null ? null : startingPosition!.toMap(),
      'topicNameConfiguration': ?topicNameConfiguration == null ? null : topicNameConfiguration!.toMap(),
      'topicsToExcludes': ?topicsToExcludes,
      'topicsToReplicates': topicsToReplicates,
    };
  }

  factory ReplicatorReplicationInfoListTopicReplication.fromMap(Map<String, dynamic> map) {
    return ReplicatorReplicationInfoListTopicReplication(
      copyAccessControlListsForTopics: map['copyAccessControlListsForTopics'] == null ? null : map['copyAccessControlListsForTopics'] as bool,
      copyTopicConfigurations: map['copyTopicConfigurations'] == null ? null : map['copyTopicConfigurations'] as bool,
      detectAndCopyNewTopics: map['detectAndCopyNewTopics'] == null ? null : map['detectAndCopyNewTopics'] as bool,
      startingPosition: map['startingPosition'] == null ? null : ReplicatorReplicationInfoListTopicReplicationStartingPosition.fromMap((map['startingPosition'] as Map).cast<String, dynamic>()),
      topicNameConfiguration: map['topicNameConfiguration'] == null ? null : ReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration.fromMap((map['topicNameConfiguration'] as Map).cast<String, dynamic>()),
      topicsToExcludes: map['topicsToExcludes'] == null ? null : (map['topicsToExcludes'] as List).cast<String>(),
      topicsToReplicates: (map['topicsToReplicates'] as List).cast<String>(),
    );
  }
}

