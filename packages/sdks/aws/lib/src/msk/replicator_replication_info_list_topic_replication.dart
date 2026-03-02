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
      'startingPosition': ?pulumi.Input.mapOptionalInputValue<ReplicatorReplicationInfoListTopicReplicationStartingPosition, Map<String, dynamic>>(startingPosition, (value) => value.toMap()),
      'topicNameConfiguration': ?pulumi.Input.mapOptionalInputValue<ReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration, Map<String, dynamic>>(topicNameConfiguration, (value) => value.toMap()),
      'topicsToExcludes': ?topicsToExcludes,
      'topicsToReplicates': topicsToReplicates,
    };
  }

  factory ReplicatorReplicationInfoListTopicReplication.fromMap(Map<String, dynamic> map) {
    return ReplicatorReplicationInfoListTopicReplication(
      copyAccessControlListsForTopics: map['copyAccessControlListsForTopics'] == null ? null : ((map['copyAccessControlListsForTopics'] as bool).input()).input(),
      copyTopicConfigurations: map['copyTopicConfigurations'] == null ? null : ((map['copyTopicConfigurations'] as bool).input()).input(),
      detectAndCopyNewTopics: map['detectAndCopyNewTopics'] == null ? null : ((map['detectAndCopyNewTopics'] as bool).input()).input(),
      startingPosition: map['startingPosition'] == null ? null : ((ReplicatorReplicationInfoListTopicReplicationStartingPosition.fromMap((map['startingPosition']! as Map).cast<String, dynamic>())).input()).input(),
      topicNameConfiguration: map['topicNameConfiguration'] == null ? null : ((ReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration.fromMap((map['topicNameConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      topicsToExcludes: map['topicsToExcludes'] == null ? null : (((map['topicsToExcludes'] as List).cast<String>()).input()).input(),
      topicsToReplicates: ((map['topicsToReplicates'] as List).cast<String>()).input(),
    );
  }
}

