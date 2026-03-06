// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_list_topic_shared_access_keys_args_doc}
/// Arguments for listTopicSharedAccessKeys.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_list_topic_shared_access_keys_args_doc}
class ListTopicSharedAccessKeysArgs {
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the topic.
  final pulumi.Input<String> topicName;

  /// Creates a new [ListTopicSharedAccessKeysArgs].
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [topicName] Name of the topic.
  const ListTopicSharedAccessKeysArgs({
    required this.resourceGroupName,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory ListTopicSharedAccessKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListTopicSharedAccessKeysArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
    );
  }
}

