// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_list_namespace_topic_shared_access_keys_args_doc}
/// Arguments for listNamespaceTopicSharedAccessKeys.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_list_namespace_topic_shared_access_keys_args_doc}
class ListNamespaceTopicSharedAccessKeysArgs {
  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the topic.
  final pulumi.Input<String> topicName;

  /// Creates a new [ListNamespaceTopicSharedAccessKeysArgs].
  /// [namespaceName] Name of the namespace.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [topicName] Name of the topic.
  ListNamespaceTopicSharedAccessKeysArgs({
    required String namespaceName,
    required String resourceGroupName,
    required String topicName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory ListNamespaceTopicSharedAccessKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListNamespaceTopicSharedAccessKeysArgs(
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      topicName: map['topicName'] as String,
    );
  }
}

