// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicator_replication_info_list_topic_replication_starting_position.dart';
import 'replicator_replication_info_list_topic_replication_topic_name_configuration.dart';

class ReplicatorReplicationInfoListTopicReplication {
  /// Whether to periodically configure remote topic ACLs to match their corresponding upstream topics.
  final pulumi.Input<bool>? copyAccessControlListsForTopics;
  /// Whether to periodically configure remote topics to match their corresponding upstream topics.
  final pulumi.Input<bool>? copyTopicConfigurations;
  /// Whether to periodically check for new topics and partitions.
  final pulumi.Input<bool>? detectAndCopyNewTopics;
  /// Configuration for specifying the position in the topics to start replicating from.
  final pulumi.Input<ReplicatorReplicationInfoListTopicReplicationStartingPosition>? startingPosition;
  /// Configuration for specifying replicated topic names should be the same as their corresponding upstream topics or prefixed with source cluster alias.
  final pulumi.Input<ReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration>? topicNameConfiguration;
  /// List of regular expression patterns indicating the topics that should not be replica.
  final pulumi.Input<List<String>>? topicsToExcludes;
  /// List of regular expression patterns indicating the topics to copy.
  final pulumi.Input<List<String>> topicsToReplicates;

  /// Creates a new [ReplicatorReplicationInfoListTopicReplication].
  /// [copyAccessControlListsForTopics] Whether to periodically configure remote topic ACLs to match their corresponding upstream topics.
  /// [copyTopicConfigurations] Whether to periodically configure remote topics to match their corresponding upstream topics.
  /// [detectAndCopyNewTopics] Whether to periodically check for new topics and partitions.
  /// [startingPosition] Configuration for specifying the position in the topics to start replicating from.
  /// [topicNameConfiguration] Configuration for specifying replicated topic names should be the same as their corresponding upstream topics or prefixed with source cluster alias.
  /// [topicsToExcludes] List of regular expression patterns indicating the topics that should not be replica.
  /// [topicsToReplicates] List of regular expression patterns indicating the topics to copy.
  const ReplicatorReplicationInfoListTopicReplication({
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
      'startingPosition': ?pulumi.Input.mapOptionalInputValue<ReplicatorReplicationInfoListTopicReplicationStartingPosition, Map<String, dynamic>>(startingPosition, (value) => value.toMap()),
      'topicNameConfiguration': ?pulumi.Input.mapOptionalInputValue<ReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration, Map<String, dynamic>>(topicNameConfiguration, (value) => value.toMap()),
      'topicsToExcludes': ?topicsToExcludes,
      'topicsToReplicates': topicsToReplicates,
    };
  }

  factory ReplicatorReplicationInfoListTopicReplication.fromMap(Map<String, dynamic> map) {
    return ReplicatorReplicationInfoListTopicReplication(
      copyAccessControlListsForTopics: (() { final guardedValue = map['copyAccessControlListsForTopics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      copyTopicConfigurations: (() { final guardedValue = map['copyTopicConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      detectAndCopyNewTopics: (() { final guardedValue = map['detectAndCopyNewTopics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      startingPosition: (() { final guardedValue = map['startingPosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicatorReplicationInfoListTopicReplicationStartingPosition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      topicNameConfiguration: (() { final guardedValue = map['topicNameConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      topicsToExcludes: (() { final guardedValue = map['topicsToExcludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      topicsToReplicates: pulumi.Input.fromValue((map['topicsToReplicates'] as List).cast<String>()),
    );
  }
}
