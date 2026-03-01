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
  ListTopicSharedAccessKeysArgs({
    required String resourceGroupName,
    required String topicName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory ListTopicSharedAccessKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListTopicSharedAccessKeysArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      topicName: map['topicName'] as String,
    );
  }
}

